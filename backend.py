"""
idris *.idr -o out.qb --codegen qb --cg-opt "--javaName" --cg-opt "--symemu"
requirements:
- pip install -U wisepy2
"""
from wisepy2 import wise
from io import StringIO

literal_map = {
    'float': float,
    'int': int,
    'bigInt': int,
    'char': str,
    'string': str,
    'bool': lambda x: bool(int(x)),
    'unit': lambda _: None,
    "symbol": str
}


def code_list_to_string(prefix, io, xs):
    if isinstance(xs, list):
        next_prefix = prefix + '  '
        for each in xs:
            code_list_to_string(next_prefix, io, each)
        xs and io.write('\n')
        return

    assert isinstance(xs, str), xs
    io.write(prefix)
    io.write(xs)
    io.write('\n')


def mk_list(*args):
    return args


class Generate:
    @staticmethod
    def ExternalCall(name, args):
        return '__RTS.{}({})'.format(name, ', '.join(args))

    @staticmethod
    def ExternalVar(name):
        return '__RTS.{}'.format(name)

    @staticmethod
    def Var(name):
        return name

    @staticmethod
    def Call(name, args):
        return '{}({})'.format(name, ', '.join(args))

    @staticmethod
    def Defun(name, args, body):
        return ["def {}({}):".format(name, ','.join(args)), sum(body, [])]

    @staticmethod
    def Introduction(n):
        return ["{} = None".format(n)]

    @staticmethod
    def Update(n, exp):
        assert isinstance(exp, str)
        return ["{} = {}".format(n, exp)]

    @staticmethod
    def Constant(n):
        return repr(n)

    @staticmethod
    def Switch(var, xs, body):
        ret = []
        for i, [cc, stmts] in enumerate(xs):
            head = i and "elif" or "if"
            ret.append('{} {} == {}:'.format(head, var, cc))
            assert isinstance(stmts, list)
            ret.append(sum(stmts, []))
        ret.append('else:')
        assert isinstance(body, list)
        ret.append(sum(body, []))
        return ret

    @staticmethod
    def If(cond, t, e):
        assert isinstance(cond, str)
        assert isinstance(t, list)
        assert isinstance(e, list)
        return ['if {}:'.format(cond), sum(t, []), "else:", sum(e, [])]

    @staticmethod
    def EffectExpr(exp):
        assert isinstance(exp, str)
        return [exp]

    @staticmethod
    def Return(exp):
        return ['return {}'.format(exp)]

    @classmethod
    def read_and_gen(cls, io):
        ctor_stack = []
        obj_stack = []
        left_stack = []
        left = 1
        while True:
            while left:
                pats = io.readline().split()
                dispatch = pats[0]
                left -= 1

                if dispatch == "constructor":
                    cons = pats[1]
                    n = int(pats[2])
                    left_stack.append(left)
                    left = n
                    ctor_stack.append((getattr(cls, cons), n))

                elif dispatch == "literal":
                    kind = pats[1]
                    length = int(pats[2])
                    buf = io.read(length)
                    io.readline()
                    action = literal_map[kind]
                    if action is not None:
                        buf = action(buf)
                    obj_stack.append(buf)

                elif dispatch == "list":
                    n = int(pats[1])
                    left_stack.append(left)
                    left = n
                    ctor_stack.append((mk_list, n))

                else:
                    raise ValueError("malformed qb format")

            try:
                ctor, n = ctor_stack.pop()
            except IndexError:
                assert len(obj_stack) == 1
                return obj_stack[0]

            args = []
            for _ in range(n):
                args.append(obj_stack.pop())
            args.reverse()
            if ctor is mk_list:
                v = args
            else:
                v = ctor(*args)
            obj_stack.append(v)

            left = left_stack.pop()


def main(filename: str, out: str):
    """
	QB to Python Compiler
    """
    with open(filename) as f:
        io = StringIO()
        for c in sum(Generate.read_and_gen(f), []):
            code_list_to_string('', io, c)
    if out.lower() == 'std':
        print(io.getvalue())
    else:
        with open(out, 'w') as f:
            f.write('from rts import RTS as __RTS\n')
            f.write(io.getvalue())


if __name__ == '__main__':
    wise(main)()

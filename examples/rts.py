import sys
_write = sys.stdout.write
class RTS:
    def make_tuple(*args):
        return args

    def error(s):
        raise Exception(s)

    def op_eq(a, b):
        return a == b

    def op_slt(a, b):
        return a < b

    def op_minus(a, b):
        return a - b

    def op_plus(a, b):
        return a + b

    def proj(a, b):
        return a[b]

    def is_tuple(a):
        return isinstance(a, tuple)

    def op_external(*args):
        raise Exception(*args)

    def op_write_str(_, s):
        _write(s)

    def op_str_concat(a, b):
        a = a or ''
        return a + b

    op_int_str = str
    
    def assert2(a, b):
        assert a == b

    def op_read_str(f):
        return input()

    def op_str_eq(a, b):
        return a == b

    def op_str_rev(a):
        return a[::-1]


    def op_str_head(a):
        return a[0]

    def op_str_cons(a, b):
        return a + b

    def op_str_tail(a):
        if not a:
            raise IndexError
        return a[1:]

    def op_str_int(s):
        return int(s)
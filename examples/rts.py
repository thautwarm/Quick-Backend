import sys
_write = sys.stdout.write
class RTS:
    def op_external(*args):
        raise Exception(*args)

    def op_write_str(_, s):
        _write(s)

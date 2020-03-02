class RTS
    def op_write_str(_, s)
        print s
    end
    def op_int_str(i)
        i.to_s
    end

    def op_plus(a, b)
        a + b
    end

    def op_minus(a, b)
        a - b
    end

    def op_eq(a, b)
        a == b
    end

    def op_str_eq(a, b)
        a == b
    end

    def op_str_concat(a, b)
        a = a or ""
        a + b
    end

    def proj(a, b)
        a[b]
    end

    def is_tuple(a)
        return a.is_a? Array
    end

    def make_tuple(*a)
        a
    end

    def error(a)
        raise Exception::new a
    end

    def assert2(a, b)
        raise Exception::new("assertion failed") unless a == b
    end
    
end
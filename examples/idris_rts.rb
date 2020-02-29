class IdrisRTS
    def op_write_str(_, s)
        print s
    end
    def op_int_str(i)
        i.to_s
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
    
end
module __RTS

    function  make_tuple(args...)
        return args
    end

    op_eq = (==)

    op_slt = (<)

    function op_external(args...)
        error(join(", ", map(repr, args)))
    end

    function op_write_str(_, s)
        print(s)
    end

    function op_str_concat(a, b)
        a = a === nothing ? "" : a
        return a * b
    end

    op_int_str = string

end
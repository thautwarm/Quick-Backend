module __RTS
    function  make_tuple(args...)
        return args
    end

    op_eq = (==)

    op_slt = (<)

    op_minus = (-)

    op_plus = (+)

    function op_external(args...)
        error(join(", ", map(repr, args)))
    end

    function op_write_str(_, s)
        print(s)
    end

    function proj(a, b :: Integer)
        a[b + 1]
    end

    function is_tuple(a)
        a isa Tuple
    end

    function op_str_concat(a, b)
        a = a === nothing ? "" : a
        return a * b
    end

    op_int_str = string

    function assert2(a, b)
        @assert a == b
    end
end
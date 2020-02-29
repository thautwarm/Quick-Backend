class IdrisRTS
    def op_write_str(_, s)
        STDOUT.write(s)
    end
end
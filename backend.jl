# """
# idris *.idr -o out.qb --codegen qb --cg-opt "--javaName" --cg-opt "--symemu"
#
# Requirements:
# - (v1.3) pkg> add ArgParse
# - (v1.3) pkg> add MLStyle
using MLStyle
using ArgParse

literal_map(kind, x) =
    @match kind begin
        "float" => parse(Float64, x)
        "int" => parse(Int64, x)
        "bigInt" => parse(BigInt, x)
        "char" => x[1]
        "string" => x
        "bool" => parse(Bool, x)
        "unit" => nothing
        "symbol" => Symbol(x)
        _ => error(kind)
    end

function ExternalCall(name, args)
    name = Symbol(name)
    :(__RTS.$name($(args...)))
end

function ExternalVar(name)
    name = Symbol(name)
    return :(__RTS.$name)
end

function Var(name)
    name = Symbol(name)
    return name
end

function Call(name, args)
    name = Symbol(name)
    return :($name($(args...)))
end

function  Defun(name, args, body)
    name = Symbol(name)
    args = Symbol.(args)
    :(function $name($(args...)); $(body...) end)
end

function Introduction(name)
    name = Symbol(name)
    :($name = nothing)
end

function Update(name, exp)
    name = Symbol(name)
    :($name = $exp)
end

function Constant(n)
    n
end

function Switch(var, xs, body)
    isempty(xs) && return Expr(:block, body...)
    body = Expr(:block, body...)
    for (cc, stmts) in reverse(xs)
        body = Expr(:elseif, Expr(:block, :($var == $cc)), Expr(:block, stmts...), body)
    end

    body.head = :if
    return body
end

function If(cond, t, e)
    return Expr(:if, cond, Expr(:block, t...), Expr(:block, e...))
end

function EffectExpr(exp)
   exp
end

function Return(exp)
    :(return $exp)
end


function read_and_gen(io)
    ctor_stack = []
    obj_stack = []
    left_stack = []
    left = 1
    while true
        while (left !== 0)
            s = strip(readline(io))
            if isempty(s)
                continue
            end
            pats = split(s)
            dispatch = pats[1]
            left -= 1
            if dispatch == "constructor"
                cons = pats[2]
                n = parse(Int, pats[3])
                push!(left_stack, left)
                left = n
                ctor = getproperty(@__MODULE__, Symbol(cons))
                push!(ctor_stack, (ctor, n))
            elseif dispatch == "literal"
                kind = pats[2]
                length = parse(Int, pats[3])
                buf = String(read(io, length))
                readline(io)
                buf = literal_map(kind, buf)
                push!(obj_stack, buf)

            elseif dispatch == "list"
                n = parse(Int, pats[2])
                push!(left_stack, left)
                left = n
                push!(ctor_stack, (nothing, n))
            else
                error("malformed qb format")
            end
        end

        isempty(ctor_stack) && begin
            @assert length(obj_stack) === 1
            return obj_stack[1]
        end
        (ctor, n) = pop!(ctor_stack)
        args = []
        for _ in 1:n
            push!(args, pop!(obj_stack))
        end
        reverse!(args)

        if ctor === nothing
            v = args
        else
            v = ctor(args...)
        end
        push!(obj_stack, v)

        left = pop!(left_stack)
    end
end

s = ArgParseSettings()
@add_arg_table! s begin
    "filename"
        help = "input QB file"
        required = true
    "out"
        help = "output Julia file"
        required = true
end

parsed_args = parse_args(ARGS, s)

f = open(parsed_args["filename"])
big = read_and_gen(f)
close(f)

out = parsed_args["out"]
if out == "std"
    println(Expr(:block, :(include("rts.jl")), big...))
else
    open(out, "w") do f
        println(f, Expr(:block, :(include("rts.jl")), big...))
    end
end

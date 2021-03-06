# Quick and Reusable Code Generation for Idris

This is about **how to implement an Idris back end within hours or even minutes**.

POSTER PDF: `final.pdf` in the project root directory.

You're expected to use `stack install .` to build this project and install it.

This repo provides 3 solid implementations, for Python, Julia, and Ruby.

Check following files in the root directory:

- `backend.py`

- `backend.jl`

- `backend.rb`  

We tested the implemented back ends with examples from [Idris Offical Tutorials](http://docs.idris-lang.org/en/latest/tutorial),
check `examples/testcases.idr`.

To build and run the tests, firstly `cd` into `libs` directory and `idris --install quick-backend.ipkg`, then

- build: `bash build-tests.sh`

    - `examples/*.qb` will be generated according to `examples/*.idr`

    - `examples/*.py`, `examples/*.jl` and `examples/*.rb`  will be generated according to `examples/*.qb`
   
- run: `bash run-tests.sh`

## Runtime System

Runtime System(RTS) provides a set of primitive operations, but according to your use case, you usually
don't need to implement all of them.

For instance, running the Ruby file generated by our compiler requires a `rts.rb` in the same directory,
further, in that `rts.rb`, you should implement a class `RTS` like this: [rts.rb](https://bitbucket.org/thautwarm/ppl2020-idris-codegen-backend/src/master/examples/rts.rb).

Also, the Python, Ruby and Julia editions are available:

- [rts.py](https://bitbucket.org/thautwarm/ppl2020-idris-codegen-backend/src/master/examples/rts.py)

- [rts.rb](https://github.com/thautwarm/Quick-Backend/blob/master/examples/rts.rb)

- [rts.jl](https://bitbucket.org/thautwarm/ppl2020-idris-codegen-backend/src/master/examples/rts.jl)

The full set of primitive operations are listed at [Lower.hs#L255](https://bitbucket.org/thautwarm/ppl2020-idris-codegen-backend/src/b5dee65c805a0715785f1eeac949de16e37da966/src/Quick/Lower.hs#lines-255).

It seems that their semantics haven't be documented by Idris yet, but according to the data definition in the code,
things shall be clarified enough: https://github.com/idris-lang/Idris-dev/blob/master/src/IRTS/Lang.hs#L72

## FFI

To make an easier use of Idris FFI, we wrapped the [Idris FFI Mechanism](http://docs.idris-lang.org/en/latest/reference/ffi.html).

As a result, we get capable of calling foreign functions in this way:

```
fv "foreign value"
callff0 "foreign function name"
callff1 "foreign function name" (unsafe idris_value)
callff2 "foreign function name" (unsafe idris_value) (unsafe idris_value)
...
```

This does break the type safety of Idris, but for achieving a quick industrial integration, we provide this.

It's still a future research about support for the full featured Idris FFI, i.e., type safe FFI.

In terms of the current design,
when accessing a foreign function or value named `foreign`, you're actually accessing `RTS.foreign` in the backend.     

## License

BSD3 and [Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0)](https://creativecommons.org/licenses/by-nc-sa/3.0/)

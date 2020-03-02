# idris DDecl to QB, using 2 provided transformations reused by several back ends
 # javaname: identifiers transformed to valid Java Identifier
 # symEmu: emulating LISP symbol types(via integer types) for the use of tagged unions
idris examples/testcases.idr \
     -o examples/testcases.qb \
     --codegen qb \
     --cg-opt "--javaname" \
     --cg-opt "--symemu" \
     -p quick-backend

# code generation to Python
python backend.py examples/testcases.qb examples/testcases.py

# code generation to Ruby
ruby backend.rb -f examples/testcases.qb -o examples/testcases.rb

# code generation to Julia
julia backend.jl examples/testcases.qb examples/testcases.jl

# When a target language has native symbol types, like Julia,
# LISP dialects and Ruby, we don't need symbol emulation.
# use native symbol types
idris examples/testcases.idr \
     -o examples/testcases.native-symbol.qb \
     --codegen qb \
     --cg-opt "--javaname" \
     -p quick-backend

# code generation to Julia
julia backend.jl examples/testcases.native-symbol.qb examples/testcases.native-symbol.jl

# code generation to Ruby
ruby backend.rb -f examples/testcases.native-symbol.qb -o examples/testcases.native-symbol.rb

# compile hello world example
idris examples/hello_world.idr \
     -o examples/hello_world.qb \
     --codegen qb \
     --cg-opt "--javaname" \
     --cg-opt "--symemu" \
     -p quick-backend

python backend.py examples/hello_world.qb examples/hello_world.py
julia backend.jl examples/hello_world.qb examples/hello_world.jl
ruby backend.rb -f examples/hello_world.qb -o examples/hello_world.rb

# idris DDecl to QB, using 2 provided transformations reused by several back ends
 # javaname: identifiers transformed to valid Java Identifier
 # symEmu: emulating LISP symbol types(via integer types) for the use of tagged unions
idris examples/match.idr \
     -o examples/match.qb \
     --codegen qb \
     --cg-opt "--javaname" \
     --cg-opt "--symemu"

# code generation to Python
python backend.py examples\match.qb examples\match.py

# code generation to Ruby
ruby backend.rb -f examples\match.qb -o examples\match.rb

# code generation to Julia
julia backend.jl examples\match.qb examples\match.jl

# When a target language has native symbol types, like Julia,
# LISP dialects and Ruby, we don't need symbol emulation.
# use native symbol types
idris examples/match.idr \
     -o examples/match.native-symbol.qb \
     --codegen qb \
     --cg-opt "--javaname"

# code generation to Julia
julia backend.jl examples/match.native-symbol.qb examples/match.native-symbol.jl

# code generation to Ruby
ruby backend.rb -f examples/match.native-symbol.qb -o examples/match.native-symbol.rb

Python_exe = "python"
Ruby_exe = "ruby"
Julia_exe = "julia"
Python_ext = ".py"
Ruby_ext = ".rb"
Julia_ext = ".jl"

for filename in "match" "match.native-symbol" ; do
  for lang in "Python" "Ruby" "Julia" ; do
     exe = "${lang}_exe"
     ext = "${lang}_ext"
    ${!exe} "${filename}${!ext}"
  done
done
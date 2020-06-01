Python_exe="python"
Ruby_exe="ruby"
Julia_exe="julia"
Python_ext=".py"
Ruby_ext=".rb"
Julia_ext=".jl"

hget() {
    local i="$1"
    printf '%s' "${!i}"
}

stack exec -- idris examples/2.idr -o examples/2.qb --codegen qb --cg-opt "--javaname" --cg-opt "--symemu"
python backend.py examples/2.qb examples/2.py
echo "10 20" | python examples/2.py

for filename in "hello_world" "testcases" "testcases.native-symbol" ; do
  for lang in "Python" "Ruby" "Julia" ; do
     echo "=======backend : $lang, filename: $filename.idr============"
     exe="${lang}_exe"
     ext="${lang}_ext"
     path="examples/${filename}`hget $ext`"
    if [ -f $path ] ; then
      `hget $exe` "$path"
    fi
  done
done
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
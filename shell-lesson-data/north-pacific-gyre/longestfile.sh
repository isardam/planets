# check for the right number of input arguments
if [ $# -ne 2 ]
  then
    echo "longestfile file1 file2"
    echo "call longestfile with two arguments"
    exit 1
fi

sleep 2
wc -l $1/*.$2 | sort -n | tail -n 2 | head -n 1


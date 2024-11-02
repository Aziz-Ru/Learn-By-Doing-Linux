arr=("value-0" "value-1" "value-2" "value-3" "value-4")
echo ${arr[@]:1:2}

text="Hello, World!"
# Print a range of characters (requires Bash 4.0+)

echo ${text:6}
echo ${text:7:5}
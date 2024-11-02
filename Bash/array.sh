arr=("value-0" "value-1" "value-2" "value-3" "value-4")
# To access the elements in the array, you need to reference them by
# their numeric index.


echo "0th index ${arr[0]}"
echo "1th index ${arr[1]}"
echo "2th index ${arr[2]}"
# print entire array
echo ${arr[@]}
# show number of elements
echo ${#arr[@]}

# Slice array
# Print a range of elements (requires Bash 4.0+)
# ${array[@]:start:length}
# ${array:start:length}
echo ${arr[@]:1:2}
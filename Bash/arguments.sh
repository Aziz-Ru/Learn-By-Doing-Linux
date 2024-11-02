#!/bin/bash
echo "The name of the file is: $0"
echo "Argument one is $1"
echo "Argument two is $2"
echo "Argument three is $3"

# To reference all arguments, you can use $@
# Another thing that you need to keep in mind is that $0 is used to
# reference the script itself.
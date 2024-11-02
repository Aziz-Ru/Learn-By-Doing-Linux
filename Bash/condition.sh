arg1=1
arg2=1
read -p "Enter Your Name:" name
if [[ -z ${name} ]]
then 
    echo "Please enter your name"
else
    echo "Name is not empty"
fi
if [[ $arg1 -eq $arg2 ]]
then
    echo "arg1 is equal to arg2"
fi
# else 
#     echo "arg1 is not equal to arg2"
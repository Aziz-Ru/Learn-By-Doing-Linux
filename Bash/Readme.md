## Introduction to Bash scripting

Bash is a Unix shell and command language.Bash stands for Bourne-Again SHell. As with other shells, you can use Bash interactively directly in your terminal, and also, you can use Bash
like any other programming language to write scripts.

### Bash Structure

Let's start by creating a new ﬁle with a .sh extension.

In order to execute/run a bash script ﬁle with the bash shell interpreter,
the ﬁrst line of a script ﬁle must indicate the absolute path to the bash
executable:

`#!/bin/bash`

This is also called a Shebang.
All that the shebang does is to instruct the operating system to run the
script with the /bin/bash executable.

However, bash is not always in /bin/bash directory, particularly on
non-Linux systems or due to installation as an optional package. Thus,
you may want to use:

`#!/usr/bin/env bash`

It searches for bash executable in directories, listed in PATH
environmental variable.

### Bash Hello World

Once we have our devdojo.sh ﬁle created and we've speciﬁed the bash
shebang on the very ﬁrst line, we are ready to create our ﬁrst Hello
World bash script.

```
#!/bin/bash
echo "Hello World!"
```

Save the ﬁle and exit.
After that make the script executable by running:

chmod +x devdojo.sh

After that execute the ﬁle:
./devdojo.sh

### Bash Variables

As in any other programming language, you can use variables in Bash
Scripting as well. However, there are no data types, and a variable in
Bash can contain numbers as well as characters.

To assign a value to a variable, all you need to do is use the = sign:

`name="DevDojo"`

**Notice: as an important note, you can not have spaces before and after the = sign.**

Wrapping the variable name between curly brackets is not required, but
is considered a good practice, and I would advise you to use them
whenever you can:

`echo ${name}`

Note that you don't necessarily need to add semicolon ; at the end of
each line. It works both ways, a bit like other programming language
such as JavaScript!

You can also add variables in the Command Line outside the Bash script
and they can be read as parameters:

`./devdojo.sh Bobby buddy!`

This script takes in two parameters Bobbyand buddy! separated by
space. In the devdojo.sh ﬁle we have the following:

```
#!/bin/bash
echo "Hello there" $1 $2

```

$1 is the ﬁrst input (Bobby) in the Command Line. Similarly, there could
be more inputs and they are all referenced to by the $ sign and their
respective order of input. This means that buddy! is referenced to using
$2. Another useful method for reading variables is the $@ which reads
all inputs.

```
#!/bin/bash
echo "Hello there" $1
# $1 : first parameter
echo "Hello there" $2
# $2 : second parameter
echo "Hello there" $@
# $@ : all
```

To reference all arguments, you can use $@

### Bash User Input

```
#!/bin/bash
echo "What is your name?"
read name
echo "Hi there $name"
echo "Welcome to DevDojo!"
```

To reduce the code, we could change the ﬁrst echo statement with the
**read -p, the read command used with -p ﬂag will print a message**
before prompting the user for their input:

### Bash Arrays

Like other Language array can hold multiple values in single variable. _You can initialize an array by assigning values divided by space and enclosed in ()._ Example:

`my_array=("value 1" "value 2" "value 3" "value 4")`

To access the elements in the array, you need to reference them by
their numeric index.

**Notice: keep in mind that you need to use curly brackets.**

```
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
```

**When working with arrays, always use [@] to refer to all elements, and enclose the parameter expansion in quotes to preserve spaces in array elements.**

#### string slicing

In Bash, you can extract portions of a string using slicing. The basic
syntax is:

`${string:start:length}`

In Bash, if you specify a length that would extend beyond the end of the string, it will simply stop at the end of the string without raising an error.

## Bash Conditional Expression

In Bash, conditional expressions are used by the [[ compound
command and the [built-in commands to test ﬁle attributes and
perform string and arithmetic comparisons.
Here is a list of the most popular Bash conditional expressions. You do
not have to memorize them by heart. You can simply refer back to this
list whenever you need it!

```
The format of an if statement in Bash is as follows:
if [[ some_test ]]
then
<commands>
fi
```

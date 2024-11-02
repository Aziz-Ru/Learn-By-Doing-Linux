#! /bin.bash

echo "Hello there" $1

echo "Hello there" $2
echo "Hello All" $@
# In order to execute/run a bash script ﬁle with the bash shell interpreter,
# the ﬁrst line of a script ﬁle must indicate the absolute path to the bash
# executable
# This is also called a Shebang.

# $1 is the ﬁrst input (Bobby) in the Command Line. Similarly, there could
# be more inputs and they are all referenced to by the $ sign and their
# respective order of input. This means that buddy! is referenced to using
# $2. Another useful method for reading variables is the $@ which reads
# all inputs

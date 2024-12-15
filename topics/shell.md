# What is Kernel?

The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system. It manages the following resources of the Linux system –
It is often mistaken that Linus Torvalds has developed Linux OS, but actually, he is only responsible for the development of the Linux kernel.

- File management
- Process management
- I/O management
- Memory management
- Device management etc.

# Shell

**Shell accepts human-readable commands from users and converts them into something which the kernel can understand. It is a command language interpreter that executes commands read from input devices such as keyboards or from files.** 
The shell executes a program in response to its prompt. When you give a command, the shell searches for the
program, and then executes it. For example, when you give the command ls, the shell searches for the
utility/program named ls, and then runs it in the shell.**The shell is also known as a CLI, or command line interface.**


Most modern distributions will come with BASH (Bourne Again SHell) pre-installed and conﬁgured as a default shell.

- check current default shell `echo $SHELL`

  
The command (actually an executable binary, an ELF) that is responsible for changing shells in Linux is `chsh` (change
shell).


- We can ﬁrst check which shells are already installed and conﬁgured on our machine by using the `cat /etc/shells`

```
/bin/bash (Bash)
/bin/sh (Dash or Bourne shell)
/bin/zsh (Zsh)
/bin/fish (Fish shell)
/usr/bin/tcsh (TCSH)
/usr/bin/ksh (KornShell)
```

if want to s install Zsh,Fish shelll

```
sudo apt install zsh
sudo apt install fish
```

- If we want to change our default shell by using `chsh -s /usr/bin/fish`
  
  

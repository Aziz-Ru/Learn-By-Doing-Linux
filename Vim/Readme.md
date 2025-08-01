# Vim Basics

Vim is a greatly improved version of the good old UNIX editor Vi. Many new features have been added: multi-level undo, syntax highlighting, command line history, on-line help, spell checking, filename completion, block operations, script language, etc.

## Vim Modes

1. Command Mode
2. Command Line Mode 
3. Insert Mode
4. Visual Mode

### Normal/Command Mode

This is the default mode in Vim ,Whenever vim starts you'll be in this mode. you can switch to any mode from this mode . You can not do this any other mode.

|Single Movement| command |Prefixed Movement|command|
|---------------|--------|------------------|------------|
|One Line Down|`j`|5 or 9 line down|`5j` or `9k`|
|One Line Up|`k`|5 or 9 line down|`5k` or `9k`|
|Left move cursor|`h`|5 or 9 charchter|`5h` or `9h` |
|Right move cursor|`l`|5 or 9 word|`5l` or `9l` |
|Delete a letter|`x`|5 or 9 letter|`5x` or `9x` |
|Delete a Word|`dw`|5 or 9 word |`d3w` for 2 word or `d9w`|
|Delete a Line|`dd`|5 or 9 line |`d3j` for down or `d9k`|
|Copy|`y`|||
|Paste|`p`|||
|Undo|`u`||
### Insert Mode

This mode is used to edit the contents of the file . You can switch to insert mode by pressing `i` or `a` . You can use `Esc` or `Cntl+c` or `cntl+[` to back command mode.

### Command line Mode
You can use this mode to play around with some commands. But the commands in this mode are prefixed with a colon (:) . You can switch to this mode by : in command mode
|Command|Details|
|----|---|
|:Ex|Explore Mode|
|%| new file |

### Visual Mode

You can this mode to visually select some text and run commands over that section of code. You can switch to this mode by pressing `v`

|Single Movement|command|
|---------------|-------|
|Visual Line Mode|`shift+v`|
|navigation visual line mode|`shift+v+j+....j` or `shift+v+k+...k`|

## Horizontal Moving
- f finding chracter on line ,if want more need chracter to find add ;  it moves next occurance of line and , for backword direction
- a insert mode at first chracter
- A insert mode at the end of line.
- i insert mode
- I insert mode at first of line.
- o make a new line go to insert mode
- O make 
- Ex for exploring the directory
- vim . open current directory
- Sex! for creating a window
- q for quiting current window
- e filename creating a filename
- :!gcc % -o myfile  ! for running command in shell.
- % is a special Vim symbol that represents the current file name.
-o myfile specifies the output file for the compiled binary (you can name it whatever you like).
- { or cntl+d for paragraph vertical up
- } or cntl+u for paragraph vertical down
- / for searching






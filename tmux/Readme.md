
# Tmux

Tmux is a terminal multiplexer; it allows you to create several "pseudo terminals" from a single terminal. This is very useful for running multiple programs with a single connection, such as when you're remotely connecting to 
a machine using Secure Shell (SSH).

- Fully customizable status bar
- Multiple window management
- Splitting window in several panes
- Automatic layouts
- Panel synchronization
- Scriptability, which allows me to create custom tmux sessions for different purposes

## Get started with tmux
To start using tmux, type tmux on your terminal. This command launches a tmux server, creates a default session (number 0) with a single window, and attaches to it.

```
tmux
```
####  prefix key :Cntl+B
By default, the prefix is Ctrl+B. After that, press D to detach from the current session.

- You can detach from your tmux session by pressing  `prefix  d`

## Basic tmux keybindings
|Key|Work|
|---|----|
|Cntl+B d|detach from your tmux session by pressing |
|Ctrl+B % | Split the window into two panes horizontally.|
|Ctrl+B " | Split the window into two panes vertically.|
|Ctrl+B |Arrow Key (Left, Right, Up, Down) — Move between panes.|
|Ctrl+B X | Close pane.|
|Ctrl+B C | Create a new window.|
|Ctrl+B N or P | Move to the next or previous window.|
|Ctrl+B 0 (1,2...) | Move to a specific window by number.|
|Ctrl+B ? | View all keybindings. Press Q to exit.|


- List of all tmux `tmux attach -t 0`

# Linux

## Shortcuts                                                    
- open Terminal ``Ctrl+Alt+T

## Directory naviagtion
- pwd   get the present working directory
- cd    change directory
- cd ~   change directory to home
- cd ..  back to parent directory
  
## List Of Necessary Commands

1. To Update & upgrade

```
sudo apt update
sudo apt upgrade
```

## cpp file Run In Command line

```
g++ file name
./a.out
```

## unxip a .tar.gz file

`tar -xvzf  file_name   `

## install .dev file

`sudo dpkg -i package_name`

## .dev file uninstall

`sudo dpkg -r package_name`

## .dev file reconfigure

`sudo dpkg-reconfigure PACKAGE_NAME `

## Instruct dpkg to fix itself

`sudo dpkg --configure -a`

- This will instruct apt-get to correct dependencies and continue to configure your packages.

`sudo apt-get -f install`

## Check Disk Space

- List Block Devices `lsblk`
- Using fdisk (View Partition Tables) `sudo fdisk -l`
- Using df (Check Mounted Partitions) `df -h`

For summarizing disk usages of the ﬁles in the current directory we use:

```
du -sh *
```

## Mount

if you need to mount a partition that

```
sudo mount /dev/partition_name

```

## Common Desktop Server in Ubuntu

GNOME (default in Ubuntu):

    Ubuntu Desktop uses GNOME as its default desktop environment. GNOME can run on both Xorg and Wayland.
    To check if Xorg is running, you can run:

    `echo $XDG_SESSION_TYPE`

### My Laptop Sound Problem

First Add endof the file _alsa-base.conf_ _options snd-hda-intel model=,dell-headset-multi_.To do this:

```
Command: sudo nano /etc/modprobe.d/alsa-base.conf
options snd-hda-intel model=,dell-headset-multi
```

Then Install this software pulseaudio,pavucontrol,if your wish to record sound install gnome-sound-recorder.

```
sudo apt install pulseaudio
sudo apt install pavucontrol
sudo apt install gnome-sound-recorder
sudo apt update
sudo apt upgrade
```

## Create Your Own Command Alias

If you are tired of using long commands in bash you can create your own command alias.

The best way to do this is to modify (or create if it does not exist) a ﬁle called .bash_aliases in your home folder. The
general syntax is:

`alias command_alias='actual_command'`

where actual_command is the command you are renaming and command_alias is the new name you have given it.
For example

`alias install='sudo apt-get -y install'`

jlnbhjbhhbewfa
## Related 
[FileSystem](https://github.com/Aziz-Ru/Linux-Problems/blob/main/filesystem.md)

[Connecting to a Wi-Fi network in recovery mode on Ubuntu](https://github.com/kabyadeb/linux_debian/blob/main/connect%20wifi%20in%20recovery%20mode.md)

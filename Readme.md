## List Of Necessary Commands

1. TO Update & upgrade
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

## Show Partitions 

- List Block Devices `lsblk`

- Using fdisk (View Partition Tables) `sudo fdisk -l`


## Mount 
if you need to mount a partition that 

```
sudo mount /dev/partition_name

```

### My Laptop Sound Problem
First Add endof the file *alsa-base.conf* *options snd-hda-intel model=,dell-headset-multi*.To do this:
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

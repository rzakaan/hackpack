# Foremost
Foremost is a console program to recover files based on their headers, footers, and internal data structures.

## Example
```
fdisk -l
foremost -t jpg,pdf,mp4 -v -q -i /dev/sdb1 -o $HOME/recovered
```

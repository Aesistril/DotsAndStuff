#!/bin/bash
du -sh /home/*/.cache/
du -sh /var/cache/pacman/pkg/

read -p "Do you want to delete these files (y/n)?" choice
case "$choice" in 
  y|Y ) sudo rm /var/cache/pacman/pkg/*;sudo rm -rf /home/*/.cache/*;;
  n|N ) echo "exiting";;
  * ) echo "invalid input";;
esac


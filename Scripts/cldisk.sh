#!/bin/bash
du -sh /home/*/.cache/
du -sh /var/cache/pacman/pkg/
du -sh /home/*/.local/share/bottles/temp/

read -p "Do you want to delete these files (y/n)?" choice
case "$choice" in 
  y|Y ) sudo rm /var/cache/pacman/pkg/*;sudo rm -rf /home/*/.cache/*;rm -rf /home/*/.local/share/bottles/temp/*;;
  n|N ) echo "exiting";;
  * ) echo "invalid input";;
esac


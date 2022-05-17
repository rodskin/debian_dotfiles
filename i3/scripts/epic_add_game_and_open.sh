#!/bin/bash

game_name=`python3 $DOTFILES/i3/scripts/epic.py`
game_url=`python3 $DOTFILES/i3/scripts/epic_url.py`


if [ -n "$game_url" ]; then
    echo $game_name >> $DOTFILES/i3/info_files/epic_list.txt
    xdg-open "https://www.epicgames.com/store/en-US/p/$game_url" > /dev/null
fi

#!/bin/sh

id=$(xdo id -n scratchy);
if [ -z "$id" ]; then
  termite --name scratchy # -e zsh -c "termite";
else
  action='hide';
  if [[ $(xprop -id $id | awk '/window state: / {print $3}') == 'Withdrawn' ]]; then
    action='show';
  fi
  xdo $action -n scratchy
fi

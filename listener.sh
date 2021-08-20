#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd $SCRIPT_DIR && docker-compose build >& /dev/null
echo "All set and running ..."
dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" | 
  while read x; do 
    case "$x" in 
      *"boolean true"*) cd $SCRIPT_DIR && docker-compose up -d;; 
      *"boolean false"*) cd $SCRIPT_DIR && docker-compose down;;
    esac
  done
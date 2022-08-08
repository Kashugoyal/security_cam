#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
pushd $SCRIPT_DIR && docker-compose build >& /dev/null
echo "All set and running ..."
cd $SCRIPT_DIR && docker-compose up -d


#!/usr/bin/env bash

BIN=yaml-lint

# The reading options part
while [[ $# -gt 0 ]] && [[ ."$1" = .* ]] ;
do
    opt="$1";
    shift;              #expose next argument
    case "$opt" in
        "--bin="* )
           BIN="${opt#*=}";;
   esac
done

FILES="$(gitamine f:c | grep -E "(\\.yaml$|\\.yml$)" | tr '\r\n' ' ')"
LINES=${#FILES}

if [ "$LINES" -gt "1" ]
then
    eval "${BIN} ${FILES}"
fi

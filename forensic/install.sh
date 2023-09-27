#!/bin/sh

#
# shred (coreutils) 	secure delete file
# foremost          	file recovery
# ddrescue          	gnome recory disk
#
#


if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install coreutils foremost ddrescue

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        apt install foremost

fi

#!/usr/bin/env bash

set -e

if test -d ./ontogram ; then
    echo "Ontogram already installed" 1>&2
    source .venv/bin/activate
else
    python3 -m venv .venv
    source .venv/bin/activate
    git clone https://github.com/jdreo/ontogram.git
    pip3 install -r ./ontogram/requirements.txt
fi

export PYTHONPATH="${PYTHONPATH}:$(pwd)/ontogram"
./ontogram/ontogram/cli.py --format=turtle --header="left to right direction" URREF.ttl
mv URREF.ttl.txt.png URREF.png
mv URREF.ttl.txt.svg URREF.svg


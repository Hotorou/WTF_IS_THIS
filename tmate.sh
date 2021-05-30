#!/bin/bash

cd /tmp

sudo apt install tmate

# Tmate session in case of build errors
tmate -S tmate -S /tmp/tmate.sock new-session -d && echo "New session done"
tmate -S tmate -S /tmp/tmate.sock wait tmate-ready && echo "Tmate ready"
TMATE_SSH=$(tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}') && echo "Tmate session ssh"

# Our Boxen

This is my version of boxen. Use at your own risk.

## Create a new box

    mkdir -p ~/src/my-boxen
    cd ~/src/my-boxen
    git clone https://github.com/minatsu/my-boxen .
    script/boxen

and after that just append the following to ~/.zshenv

    [ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh


#!/bin/bash
# List all cows in the system visually. handles multiple folders in COWPATH
# More than just cowsay -l...
# By <anupdhml@gmail.com>

#export COWPATH="/usr/share/cows:$HOME/data/cows/my_cows:$HOME/data/cows/other_cows"

list_cow () {
    fortune | cowsay -n -f $1
    #echo "Hello world!" | cowsay -n -f $1
    echo "$@"
}

if [ -z $COWPATH ]; then
    for cow in $(cowsay -l | tail -n +2); do
        list_cow "$cow"
    done

else
    IFS=':' read -ra cow_dirs <<< "$COWPATH"

    for cow_dir in "${cow_dirs[@]}"; do
        for cow in $(ls "$cow_dir"); do
            list_cow "$cow" "$cow_dir"
        done
        echo ""
        echo "###############################################################"
        echo ""
    done
fi

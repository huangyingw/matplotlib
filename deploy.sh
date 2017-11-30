#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

copyDir="~/myproject/git/AI/matplotlib/matplotlib"
while read ss
do
    #ssh -n $ss "apt-get update && apt-get install realpath"
    ./copy.sh "$ss" "$copyDir"
    ssh -n $ss "~/myproject/git/AI/matplotlib/matplotlib/setup.sh"
done < deploy.list

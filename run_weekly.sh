#!/bin/bash
scriptpath=$(realpath "$0")
scriptdir=$(dirname "${scriptpath}")
directory="${scriptdir}/weekly"
for file in ${directory}/*.py; do 
    python3 $file
done

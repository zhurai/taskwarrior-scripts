#!/bin/bash
scriptpath=$(realpath "$0")
scriptdir=$(dirname "${scriptpath}")
directory="${scriptdir}/yearly"
for file in ${directory}/*.py; do 
    python3 $file
done

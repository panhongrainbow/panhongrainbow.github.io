#!/bin/bash

# This script is used to generate a single graph from a set of graphs.

# (1) The script assumes that the graphs are in the same directory and that
# the graphs are named with a number as the first character of the file name.
# (2) The script will then concatenate the graphs in the order of the number in the file name.
dir="./subRoadmaps"
output_file="roadmap.dot"

# Replace the output file if it exists.
echo "digraph SubRoadmap {" > $output_file

for f in $dir/*; do
    if [ -f $f ]; then
        # concatenate the graphs in the order of the number in the file name.
        echo "" >> $output_file
        cat $f | grep -v "digraph SubRoadmap {" | grep -v "end" >> $output_file
    fi
done

echo "}" >> $output_file
#!/bin/bash

input_dir=$1
output_dir=$2


for f in $input_dir/*.jpg
do
        echo "Processing $f"
        name="$(basename -- $f .jpg)"
        outf="$output_dir/$name.pgm"
        echo "$outf"

        ./jpg2pgm/jpg2pgm $f $outf

done


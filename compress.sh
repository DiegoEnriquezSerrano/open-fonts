#!/bin/bash

[ ! -d gz ] && mkdir gz;

cd min || exit;

echo "Compressing files..";

for file in *; do
    echo "Compressing $file";
    pigz -9 -c "$file" > ../gz/"$file";

done;

echo "Compression finished."

cd ../ && exit;

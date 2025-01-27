#!/bin/bash

FILES=$(find ../../input -not -name '.*' -type f -print)
#rm MD5.txt; rm SHA256.txt
for FILE in $FILES ; do echo $FILE; md5sum $FILE >> ../output/MD5.txt; done
for FILE in $FILES ; do echo $FILE; shasum -a 256 $FILE  >> ../output/SHA256.txt; done


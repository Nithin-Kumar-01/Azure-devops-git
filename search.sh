#! /bin/bash
echo "This is the change"
echo " Enter the Folder path you need to search"
read path
find $path -type f -name "*.txt" | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"

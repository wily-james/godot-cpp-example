#!/bin/sh

if [[ $# -lt 2 ]] ; then
    echo 'Not enough arguments'
    echo 'Usage: new_node.sh $1 $2'
    echo 'Where $1 is the ClassName and $2 is the file-name'
    echo 'Example: The following invocation will result in a class named ExampleNode in files named example-node.h and example-node.cpp'
    echo './new_node.sh ExampleNode example-node'
    exit 1
fi

class_name=$1
file_name=$2
header="src/$file_name.h"
cpp="src/$file_name.cpp"

cp scripts/new_node.h $header
cp scripts/new_node.cpp $cpp

header_str=$(echo $class_name | tr '[:lower:]' '[:upper:]')_H
sed -i '' -e "s/NEW_NODE_H/$header_str/g" $header
sed -i '' -e "s/NewNode/$class_name/g" $header
sed -i '' -e "s/NewNode/$class_name/g" $cpp
sed -i '' -e "s/new_node/$file_name/g" $cpp

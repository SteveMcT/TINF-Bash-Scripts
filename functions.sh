#!/bin/bash

linux="Linux"
ubuntu="SomeUbuntu"
version=5

# Function which adds strings based on parameters
function AddStrings(){
    string=$1' '$2
    echo $string
}

# Function which slices strings based on parameters
function Slice(){
    subString=${1:$2:$3}
    echo $subString
}

# Function which adds numbers based on parameters
function AddNumbers(){
    number=0

    for i in $@
    do
        number=$(( $number + $i ))
    done
    echo $number
}

ubuntu=$(Slice $ubuntu 4 10)
version=$(AddNumbers $version $version $version $version)
result=$(AddStrings $linux $ubuntu)

echo $result $version 👍 #Linux Ubuntu 20 👍

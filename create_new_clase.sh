#!/bin/bash

#   Usage:
#     $ create_new_clase.sh [number of the class you want to create]
#   Example:
#   To create the file of class 4 quickly:
#    $ ./create_new_clase.sh 4

if [ "$1" == "" ] ; then
    echo "You must Provide a filename!!!"
    exit 1
elif [ -a $1 ] ; then
    echo "The file already exists!!!"
    exit 1
else
    mkdir $1 &&\
        cp ./templates/this_class.tex $1 &&\
        touch $1/class.tex &&\
        #It appears that ln only works when they are created from 
        #the inside of the directory
        cd $1 &&\
        ln -s ../general.sty .
fi

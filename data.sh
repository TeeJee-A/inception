#!/bin/bash

FILE=../data/mariadb
if [ -d ../data/mariadb ]; then
    echo "directory exists"
else
    mkdir -p ../data/mariadb
fi
if [ -d ../data/wp ]; then
    echo "directory exists"
else
    mkdir -p ../data/wp
fi
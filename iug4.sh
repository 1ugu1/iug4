#!/bin/bash


echo "~~~~~~~~~WELCOME TO IUG4~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will do a port scan  ~"
echo "~                                ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$1" == "" ] 

then
        echo "Type the goal link"

else 
for port in {1..10000}
do
hping3 -S -p $port -c 1 $1  2> /dev/null | grep "flags=SA"| cut -d " " -f 5 | cut -d "=" -f2 
done
fi

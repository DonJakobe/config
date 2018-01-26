#!/bin/sh
value="$(xbacklight -get)"
echo $value

if [[ $1 == "dec" ]]
then
	nvalue=$(echo "($value/3)-3" | bc)
	xbacklight -set $nvalue
elif [[ $1 == "inc" ]]
then
	nvalue=$(echo "($value+3)*3" | bc)
        xbacklight -set $nvalue
fi

#!/bin/bash
#sum changes vol2
function hello_there()
{
	echo 'General Kenobi!'
}

function say_my_name()
{
	echo 'Master JellyBeanci'
}

function connectPi()
{
	#ssh pi@192.168.1.${1}
	param1="$1"	
	size=${#param1}
	if [ $size -le 0 ]; then
		echo 'IP not defined'
	else
		ssh pi@192.168.1.${param1}
	fi  
}

function printTree()
{
	find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
}

function mkcd()
{
	mkdir $1 && cd $1
}

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

function openBishamon()
{
	ssh -i "~/.key.pem" ubuntu@bishamon.ml
}

function openBishamonWithKey()
{
	key=/Volumes/FDD/secret.key
	if [ -f "$key" ]; then
		openBishamon
	else
		clear
		node ~/.custom_repos/floppy.js
		echo -n "Please Insert your key! and Press y to Continue ";
		if asksure; then
  		echo "Okay, looking for the Key file..."
			while ! [ -f "$key" ]; do
      				echo -n "# "
				sleep 1
			done
			openBishamonWithKey
		else
  			echo "Good Bye..."
		fi
	fi
}

asksure()
{
	while read -r -n 1 -s answer; do
		if [[ $answer = [YyNn] ]]; then
			[[ $answer = [Yy] ]] && retval=0
			[[ $answer = [Nn] ]] && retval=1
			break
		else
			retval=1
			break
  		fi
	done
	echo # just a final linefeed, optics...
	return $retval
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

function cl()
{
	cd $1 && ls
}

function juan()
{
	node ~/.custom_repos/juan.js
}

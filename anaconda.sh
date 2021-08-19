#!/bin/bash
case $1 in
on)
	echo "Starting Anaconda."
	conda config --set auto_activate_base True
	source ~/.bashrc
	anaconda-navigator
	;;
off)
	conda config --set auto_activate_base False
	source deactivate
	echo "Exit Anaconda."
	;;
*)	
	echo "The Input does not exist"
	echo "'anaconda on' 	= start Anaconda"
	echo "'anaconda off' 	= exit Anaconda "
	;;
esac

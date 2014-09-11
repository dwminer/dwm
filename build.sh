#!/bin/sh

if [ "$1" = "lt" ] ; then
	cp laptop.h machine.h
	echo "Building for laptop"
elif [ "$1" = "dt" ] ; then
	cp desktop.h machine.h
	echo "Building for desktop"
else
	echo "No build option determined, exiting"
	exit
fi

makepkg -if

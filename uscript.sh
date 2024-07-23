#!/bin/bash

file=/etc/os-release

if  grep -q "Debian" $file || grep -q "Ubuntu" $file
then
	sudo apt update
	sudo apt full-upgrade

elif grep -q "Red Hat" $file
then
	sudo dnf upgrade

elif grep -q "openSUSE" $file
then
	sudo zypper refresh
	sudo zypper update

elif grep -q "Arch" $file
then
	sudo pacman -Syu

elif grep -q "Gentoo" $file
then
	sudo emerge --sync
	sudo emerge --update --
	deep --newuse @world

else grep -q "Slackware" $file
then
	sudo slackpkg update
	sudo slackpkg upgrade-all
fi

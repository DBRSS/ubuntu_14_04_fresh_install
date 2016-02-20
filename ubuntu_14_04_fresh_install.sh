#!/bin/bash

SUBL_V=3

# install sublime-text 2
installSublimeText2()
{
	if [ -!ed ~/.config/sublime-text-2 ]; then
		sudo add-apt-repository ppa:webupd8team/sublime-text-2
		sudo apt-get update
		sudo apt-get install sublime-text-installer
		SUBL_V=2
	fi
}

# install sublime-text 3
installSublimeText3()
{
	if [ -!ed ~/.config/sublime-text-3 ]; then
		sudo add-apt-repository ppa:webupd8team/sublime-text-3
		sudo apt-get update
		sudo apt-get install sublime-text-installer
		SUBL_V=3
	fi
}

# We will clone the plugins directly into the packages directory
# sublime should recognize them, if they don't need any configuration
clone_plugins()
{
	cd ~/.config/sublime-text-$SUBL_V/Packages/

	if [ -!ed ~/.config/sublime-text-3/Packages/flatland ]; then
		git clone https://github.com/thepixellab/flatland.git
	fi

	if [ -!ed ~/.config/sublime-text-3/Packages/flatland ]; then
		git clone https://github.com/wbond/sublime_alignment.git
	fi

	if [ -!ed ~/.config/sublime-text-3/Packages/flatland ]; then
		git clone https://github.com/jisaacks/gitgutter.git
	fi
	
	if [ -!ed ~/.config/sublime-text-3/Packages/flatland ]; then
		git clone https://github.com/kemayo/sublime-text-git.git
	fi

	if [ -!ed ~/.config/sublime-text-3/Packages/flatland ]; then
		git clone https://github.com/facelessuser/HexViewer.git
	fi
}

printHelp()
{
	echo 'ring around the rosy'
	echo 'pocket full of posie'
	echo 'ashes ashes we all fall down...'
}

if [ $# -lt 1 ] || [ $1 == '--h' ] || [ $1 == '--help' ]
then 
	printHelp
elif [ $1 == '-f' ] 
then
	installSublimeText

	# what else should we add to the full install?
	# do we want a partial install?
fi

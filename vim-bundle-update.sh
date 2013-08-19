#!/bin/sh

cd ~/.vim/bundle

for directory in `ls -d ~/.vim/bundle/*`
do
	echo "Checking for $directory update..."
	if [ -e "$directory/.git" ]
  then
		cd $directory
		git pull
		cd ..
	else
		echo "$directory not a git plugin. Skipping update."
	fi
	echo "\n"
done

exit 0

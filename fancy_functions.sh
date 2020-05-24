#!/bin/bash

gco ()
{
	if [ -d .git ]
	then 
		branch="$(git rev-parse --abbrev-ref HEAD)"

		echo "[+]branch $branch"

		git commit -m"[$branch] $*"

		echo "[+]commit message = [$branch] $*"

	else

  		echo "[-]erreur!ce dossier n'est pas un dossier git"

	fi;
	
	
}

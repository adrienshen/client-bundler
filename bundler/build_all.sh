#!/bin/bash

# echo "Building all script bundles..."
sh build_scripts.sh

echo "Building style bundles..."
sh build_css.sh "$(< customcss.bundle)"

# read -p "Proceed to mvn clean package? : y/n ..." CHOICE;


# if [ "$CHOICE" == "y" ]; then
# 	echo "Doing mvn clean package!"
# 	# move back one level and sudo mvn clean package
# 	cd .. && sudo mvn clean package
# fi

echo "END BUILD."
#!/bin/bash

echo "cleaning buildjs folders..."
sh clean_bscripts.sh

echo "starting scripts minification build..."
sh optim.sh "$(< testjs.bundle)"

echo "scripts bundling finished."
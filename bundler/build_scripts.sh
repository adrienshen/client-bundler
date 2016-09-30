#!/bin/bash

echo "cleaning buildjs folders..."
sh clean_bscripts.sh

echo "starting scripts minification build..."
sh optim.sh "$(< homejs.bundle)"
sh optim.sh "$(< step2.bundle)"
sh optim.sh "$(< vuejs.bundle)"

echo "scripts bundling finished."
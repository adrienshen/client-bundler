#!/bin/bash

# This .sh will build the css files named in customcss.bundle
# and replace the tags in header2.jsp with the minified and versioned file.

CSS_DIRECTORY="../public/css-test/"
BUNDLED_FILES="../public/css-test/bundle*.css"
LAYOUT="../html-test/testfile.html"
TS=$(date +%s)

echo "deleting prior customcss.bundle files"
sudo rm $BUNDLED_FILES

echo "combining css files into one."
COMBINED_CSS="${CSS_DIRECTORY}bundle.v${TS}.css"
cat $* > $COMBINED_CSS

echo "minifying ${COMBINED_CSS}"
MINV_CSS="${CSS_DIRECTORY}bundle.min.v${TS}.css"
cleancss -o $MINV_CSS $COMBINED_CSS
echo "The output css filepath is : " $MINV_CSS

echo "replacing tags... \n"
ID="customcss"
echo "The bundle id is : " $ID
echo "The layout path is : "$LAYOUT

sed -i '' '/<!-- BUNDLE:'$ID' -->/,/<!-- ..BUNDLE:'$ID' -->/c\ 
<!-- BUNDLE:'$ID' -->\
<link rel="stylesheet" type="text/css" media="screen" href="/public/css-test/bundle.min.v'$TS'.css" />\
<!-- ..BUNDLE:'$ID' -->\
    ' $LAYOUT

echo "Finished replacing link tags."
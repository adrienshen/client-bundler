# rewrite jsp script tags.
echo "The new bundle file name is: "
echo "The output path is : " $1
BUNDLE=$1
LAYOUT=" "
#js/components/build/components.bundle.min.v1473153203.33
ID=$2
echo "The bundle id is : " $ID

if [ $ID == "testing" ]
then 
	LAYOUT="../html-test/testfile.html"
fi

echo "The layout path is : "$LAYOUT

sed -i '' '/<!-- BUNDLE:'$ID' -->/,/<!-- ..BUNDLE:'$ID' -->/c\ 
<!-- BUNDLE:'$ID' -->\
<script type="text/javascript" src="'$BUNDLE'"></script>\
<!-- ..BUNDLE:'$ID' -->\
    ' $LAYOUT
# rewrite jsp script tags.
echo "The new bundle file name is: "
echo "The output path is : " $1
BUNDLE=$1
LAYOUT=" "
#js/components/build/components.bundle.min.v1473153203.33
ID=$2
echo "The bundle id is : " $ID

if [ $ID == "step2" ]
then 
	LAYOUT="../src/main/webapp/WEB-INF/views/express/step2.jsp"
elif [ $ID == "homejs" ]
then
	LAYOUT="../src/main/webapp/WEB-INF/layouts/header2.jsp"
elif [ $ID == "components" ]
then
	LAYOUT="../src/main/webapp/WEB-INF/layouts/footer-cms.jsp"
fi

echo "The layout path is : "$LAYOUT

sed -i '' '/<!-- BUNDLE:'$ID' -->/,/<!-- ..BUNDLE:'$ID' -->/c\ 
<!-- BUNDLE:'$ID' -->\
<script type="text/javascript" src="'$BUNDLE'"></script>\
<!-- ..BUNDLE:'$ID' -->\
    ' $LAYOUT
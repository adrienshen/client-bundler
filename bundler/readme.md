#Before the deployment to production:
Make sure you have node and npm package cleancss install globally:
`$ sh sudo npm install -g clean-css`

Then run:
`$ sh build_all.sh`

1. Will delete the old build files, bundle up scripts, minify them, put a version according to the timestamp and replace the script references in the .jsp files. 
2. Then will bundle up the home css files, minify them, put timestamp versioning on it, and replace the reference in the .jsp files. 
3. There will be a final option to proceed to mvn clean package if you want.
	
##For QA

Preferable not to run the build scripts, because it will make much debugging more difficult.

##For Github

Please don't commit the build files. This will ruin things for everyone and will have to revert.

##Revert your source code after build.

`$ sh revert_src.sh`

To revert the .jsp references after the build to before you did the build.
#Build system automation for a company project.
Want to create a general framework for this, using parts of the existing system.
	
##For QA

Preferable not to run the build scripts, because it will make much debugging more difficult.

##For Github

Please don't commit the build files. This will ruin things for everyone and will have to revert.

##Revert your source code after build.

`$ sh revert_src.sh`

To revert the .jsp references after the build to before you did the build.
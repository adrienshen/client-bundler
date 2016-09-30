#Build system automation for a company project.
Working to generalize these scripts to be used for any project, using parts of the existing system.

Run using `$ build_all.sh`
Revert your source using `$ revert_src.sh`

##For QA

Preferable not to run the build scripts, because it will make much debugging more difficult.

##For Github

Please don't commit the build files. This will ruin things for everyone and will have to revert.

##Revert your source code after build.

`$ sh revert_src.sh`

To revert the .jsp references after the build to before you did the build.
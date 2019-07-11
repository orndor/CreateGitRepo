# Initialize GIT Repo for homework assignements#
# File name: Program.cs                        #
# Project Name: repo-setup.sh                  #
# Author: Orndoff, Robert K.                   #
# Date created: 07/11/2019                     #
# Date last modified: 07/11/2019               #
#!/bin/bash                                    #
################################################
# Enter the full path where you will store your classwork C# projects. ** Make sure you include the trailing '/' on the directory. **
fullPath=/c/root/folder/where/you/will/store/your/projects/
echo "Enter Project Name:"
read projName
# Enter your GitHub Authentication Token.  Set this up at: https://github.com/settings/tokens
authToken=PASTE-YOUR-TOKEN-OVER-THIS-ALL-CAP-TEXT
# Enter GitHub username below:
gitUsername=ENTER-USERNAME-HERE
# Crunching starts below...
mkdir $fullPath$projName
cd $fullPath$projName
echo $projName >> README.md
cp $fullPath.gitignore .gitignore
dotnet new console
git init
git add .
git commit -m "First Commit"
curl -i -H "Authorization: token $authToken" --data "{\"name\":\"$projName\"}" https://api.github.com/user/repos
git remote add origin https://github.com/$gitUsername/$projName.git
git push -u origin master
echo "All Done!"

# Initialize GIT Repo for homework assignements
#!/bin/bash
echo "Enter Project Name:"
read projname
mkdir /c/Users/rornd/OneDrive/MSSA/Term-1/CSharp-Projects/$projname
cd /c/Users/rornd/OneDrive/MSSA/Term-1/CSharp-Projects/$projname
echo $projname >> README.md
cp /c/Users/rornd/OneDrive/MSSA/Term-1/CSharp-Projects/.gitignore ./.gitignore
dotnet new console
git init
git add .
git commit -m "first commit"
curl -i -H 'Authorization: token INSERT-TOKEN-HERE' --data '{"name":"$projname"}' https://api.github.com/user/repos
git remote add origin https://github.com/orndor/$projname.git
git push -u origin master
echo "All Done!"

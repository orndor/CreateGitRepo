#CreateGitRepo

##About:
This script performs the following:
1. Asks for a project name.
2. Creates a new folder to store that project on your computer.
3. Creates a local git repo.
4. Creates a new C# console app template.
5. Adds all the files in the directy to the newley created repo.
6. Commits the chnages.
7. Pushes everything up to your GitHub account.

## To get this running:
1. Copy repo-setup.sh and .gitignore to a directory on you computer.
2. Open Gitbash.
3. Navigate to the location of that file.
4. Edit the file in nano (i.e nano repo-setup.sh), and update the following parameters:
  * Line 10: Enter the full path where all your projects will be stored.  This script will create subfolders within this folder. (To get this, type pwd in GitBASH from the folder you're working in.)
  * Line 14: Enter your GitHub develop access token.  You can generate one here: [https://github.com/settings/tokens](https://github.com/settings/tokens)
  * Line 16: Enter your GitHub username.  This is how the script determines the remote GitHub account to push the repo to.
5. Hit CTRL+X to exit nano, and save the changes.
6. At the GitBASH prompt, Type ./repo-setup.sh
7. Start doing your homework.

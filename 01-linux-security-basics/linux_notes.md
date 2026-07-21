# Linux Notes

## Commands Learnt

pwd- shows the currently working director

ls - Shows a list of files and directories in the current directory

ls -la shows a list of all files (hidden files) in a detailed format

cd ~/ changes directory

mkdir - creates a new directory (folder)

touch - creates new empty file

tree - shows the hirarchy of files

cat - displays content of file in the terminal

nano - opens nano text editor to create or edit file

mv - to rename or moves file to another location

sudo apt update - refreshes ubuntu list of available software packages and runs command with administrator privilages

sudo apt install - install software packages

##Linux Navigation

. - Current directory
..- Parent directory
~ - Home directory

##Git commands

git init -initialize a folder as git repository so it can start tracking changes

git status - shows current state of repository ( modifies, staged, untracked files)

git add<file> - stages a file to be included in the next commit

git add  - stages all new and modified files in the current directory for the next commit

git commit -m "message" - saves a snapshot of the staged changes with message

git remote add origin<url> - connects local repository to a remote github repository named origin

git branch -M main -  Renames the current branch to main

git push -u origin main - uploads the main brnach to github and remembers the remote branch for future pushes.

git push - uploads latest commit to github repository

git log --oneline - displays history of commits

git remote -v - shows URLs of the remote repositories connected to local repositories

git config --global user.name "Name" : sets git username for all repositories on your computer

git congig --global user.email : sets email  for all reposittories on your computer

##Most used Git commands

git status
git add .
git commit -m "Describe what changed"
git push

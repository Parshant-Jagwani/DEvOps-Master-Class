# Configure User Information
git config --gobal user.name ""
git config --gobal user.email ""
git config --list

# Creating a First Repo:
## Create a project Folder

git init                                    # initialize .git  folder in the current directory
touch README.md                             # Create  an empty file called README.md
git status                                  # shows  untracked files that git is not currently monitoring
git add README.md                           # stages the file for commit, it now being monitored by Git
git status                                  # shows the staged file and also changes
git add .                                   # Add the files into staging area. This command will stage all new or changed files in
git status                                  # Shows only the files that have been added to
git status  --ignored                       # Shows ignored files as well
git commit  -m "First Commit"               # commits the staged files with a message
git status                                  # Now everything is clean again because nothing is staged anymore
nano  README.md                             # Opens the file in nano text editor 'Commit changes as "Be the change you want to see" ' and save the file.
git status                                  # Show differences between the last committed state vs the current state and let us know Readme.md is Modified.
git diff                                    # Show differences between the last committed state vs the current state of tracked files in your working tree

## Git Tracking and Git Logs.
pwd                                         #  prints the present working directory
git status                                  # gives information about the state of the repository
nano my first-file.txt                      # create  a text file using nano editor add some  content to this file save and exit 
git status                                  # show the newly created file
git add .                                   # adds the file to  the staging area
git commit -m "my commit for first file"    # commit 
git status                                  # should give same output as before
git log                                     # lists all the commits made so far. It’s like looking at your family tree – each commit represents a branch that led
git log  --authour =Your_Name               # list all the  commits made by you
git push origin master # Pushing  your local repo to remote repo on Github

git push #  This will prompt for username & password (if your do not setup  ssh)
          # or use :
          # git push --set-upstream origin master
          # which sets up tracking info (the 'origin' refers to the remote repo you want to push to).
          # The 'master' refers to the branch on the remote repo you want to push to . If you haven’t set this up yet


## Create Branch of Git Branch
git branch                              # lists all the branches in the repo
git branch develop                      # Creates a new branch named develop
git switch develop                      # Switches to the develop branch
touch index2.html                       # creates a new file in the develop branch
touch profile.html                      # creates another new file in the develop branch
echo "home page code" >> index2.html    # add content into index.html
echo " Profile page " >> profile.html   # add content into profile
git status                              # show both newly created files are untracked
git add .                               # stage/Tracking both the files
git commit -am "Development started "   # make a quick amend commit adding
git push --set-upstream origin develop  #  upstream  link between your local and remote repo 
git switch master                       # go back to the master branch

# MERGE DEVLOP BRANCH INTO MASTER GO TO PULL REQUEST 

git pull origin develop                 #  Merge the latest changes from develop into master
ll                                      #  Check what has been pulled into master
git pull                                #  Tries to merge without creating a new commit,
git merge Develop                       #  Merge the branch develop into current HEAD.
git add .                               #  Stage all the changes that were merged
git commit                              #  Make a new Commit with message
git push                                #  Push the changes to the remote repo

# GIT REVERT 
# If you have made a mistake in your  last commit: REVERT WORK HERE
# There are two way to achive this by  using either one of them 'revert' and 'reset'
# RESET -Practically, user can think of it as a "roleback"
# REVERT  – Reverts a particular commit. It’s like undoing a commit.

git log  --oneline # Shows  the history of commits
git reset --hard HEAD~1 #   Goes back to the state before the last commit
                         #   The ~1 means one
git reset --soft c53c593 #   Soft resets the staging area to match
git rest --hard 1bfcea9  #  Hard Reset the entire project to match this commit

# Compare  Two Different Point In Time Of Your Project
git diff  HEAD <commit> # This will give the difference between the current version of the project and any
git diff <commit-id-1> <commit-id-2> # review difference between two commits 
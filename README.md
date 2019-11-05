
# Git Formation

## [](https://github.com/fabremx/git-formation#purpose-of-git-katas)Purpose of Git Formation

This repository is a collection of Git exercises. Mainly of theses excercises are stolen from [pragma-training](https://github.com/praqma-training/git-katas), [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/) and [Learngitbranching.js.org](https://learngitbranching.js.org/).

The exercises are designed for use with the git formation slides.
You can find the slides here : [Slides](https://github.com/fabremx/git-formation/tree/master/presentation/slides.pdf)

Exercises are divided into two categories :
- Excercises to learn one specific git command
- Excercises to pratice git commands in a mini scenario

## [](https://github.com/fabremx/git-formation#quick-start)Setup Exercises

-   Clone this repository
-   Go into the folder you want to solve an exercise in
-   Run the  `setup.sh`  script
-   Consult the README.md in that folder to get a description of the exercise

## [](https://github.com/fabremx/git-formation#cheatsheet)Cheatsheet

A collection of useful commands to use throughout the exercises:
  
```shell
# Cloning a repository
git clone https://github.com/fabremx/git-formation.git    # Clone this repository to your current working directory

# See local changes
git status                  # Show the working tree status
git diff                    # Show changes current working directory (not yet staged)
git diff --cached           # Show changes currently staged for commit

# Add files to staging (before a commit)
git add myfile.txt          # Add myfile.txt to stage
git add .                   # Add entire working directory to stage

# Make a commit
git commit                              # Make a new commit with the changes in your staging area. This will open an editor for a commit message.
git commit -m "I love documentation"    # Make a new commit with a commit message from the command line
git commit -a                           # Make a new commit and automatically "add" changes from all known files
git commit -am "I still do!"            # A combination of the above
git commit --amend                      # Re-do the commit message of the previous commit (don't do this after pushing!)
                                        #   We _never_ change "public history"

# Configuring a different editor
## Avoid Vim but stay in terminal:
- `git config --global core.editor nano`

## For Windows:
- Use Notepad:
`git config --global core.editor notepad`

- or for instance Notepad++:
`git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`



# See history
git log             # Show commit logs
git log --oneline   # Formats commits to a single line (shorthand for --pretty=oneline  --abbrev-commit )
git log --graph     # Show a graph commits and branches

# Working with Branches
git branch my-branch       # Create a new branch called my-branch
git checkout my-branch     # Checkout ("Switch" to work on) my-branch
git checkout -b my-branch  # Create a new branch called my-branch AND switch to it
git branch -d my-branch    # Delete branch my-branch that has been merged with master
git branch -D my-branch    # Forcefully delete a branch my-branch that hasn't been merged to master

# Merging
git merge master         # Merge the master branch into your currently checked out branch.
git rebase master        # Rebase current branch on top of master branch

# Working with Remotes
git remote              # Show your current remotes
git remote -v           # Show your current remotes and their URLs
git push                # Publish your commits to the upstream master of your currently checked out branch
git pull                # Pull changes from the remote to your currently checked out branch

# Aliases - it's possible to make aliases of frequently used commands
#   This is often done to make a command shorter, or to add default flags

# Adding a shorthand "co" for "checkout"
git config --global alias.co "checkout"
# Usage:
git co      # Does a "git checkout"

## Logging
git log --graph --pretty=oneline --abbrev-commit --all # Show a nice graph of the previous commits
## Adding an alias called "lol" (log oneline..) that shows the above
git config --global alias.lol "log --graph --pretty=oneline --abbrev-commit --all"
## Using the alias
git lol     # Does a "git log --graph --pretty=oneline --abbrev-commit --all"
```
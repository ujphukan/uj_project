
# Lession 1: Introduction----
gapminder <- read.csv("data/gapminder_data.csv")

# library (readr) , then use read_csv
# after read_csv("") symbol pressing tab button shows the folders/files in the directory
# introducing section by -----
## introducing sub-sections ------
library(readr)
library(dplyr)
gapminder1 <- read_csv("data/gapminder_data.csv")
str(gapminder1)
head(gapminder1)

# R does not let objects with numbers
gap_1980s <- filter(gapminder1, year >=1980, year <1990)

write_csv(gap_1980s, "data_clean/gapminder_1980s.csv")

# Source button runs the entire code
# Also source function can be used to run the whole thing
source("R/01_wrangle.R")

# Code-> reformat code, arrange the code to more readable format
# "styler package can be used to reformat code as well
# "here" package help identify the path of files
# video link of the recording- https://youtu.be/_hU9cNHylHM

# Lession 2: Using shell commands-----
# git link for mac https://git-scm.com/download/mac
# git link for windows https://git-scm.com/download/win

# The shell allows us to interact with our computer (run programs, move around and modify directories and files) from the command line.
# We can use the shell from the Terminal pane in RStudio.
# The file system that we interact with in the shell is the same as what we see in Finder/File Explorer/the RStudio Files pane.
# File systems have a nested treelike structure. When navigating our file system from the command line, we write paths relative to where we're currently working.
# Tools -> Global options-> terminal-> new terminal open with-> GitBash on windows, on mac bash
# the prompt sign is $, sometimes > sign may come, restart or use new terminal
# $ means that the switch to bash or Git Bash worked.  So now we’re all speaking the same dialect
# "pwd" tell you the working directory
# to see whats in the folder type "ls"
# "cd" is for change directory
# "mv" is to move
# -s means options, gives the size
# -sh means, tell me the size and print it
# ls --help is to see the options
# to get the data from desktop to the project data through command line
# to copy "cp" then "file directory" then "file new directory" -r
# cd ../ to go up wards the folder
# It is difficult when it is in different drives, so for desktop to shared network drive, follow below
# $ cd C:\Users\ujphukan or ~ to go to Desktop location
# $ cd ~/Desktop/shell-lesson-data/ to go to the required demo data
# to copy cp ~/Desktop/shell-lesson-data/ Z:/'UA lab'/uj_project/data_clean -r

# Video link for above shell commands lession - https://youtu.be/v2ysM6HQ2ZE

# Lession 3: 	Version control with git-----

# eg. How to deal with several versions of a manuscript doc file
# It helps us track development of a research project
# Git is the software on computer
# GitHub is website - connects your local git to cloud
# Github alternatives, gitlab or gitbucket
# $ git config --global user.name "ujphukan" for user name
# $ git config --global user.email "ujphukan@arizona.edu" for setting up email
# $ git config --global core.editor "vim" for setting up text editor, another option is "nano"
# Git repositories where we share, edit, save like a folder
# create new R project and click on git hub repository
# click on more option and click on show hidden files to display all the files
# To create a existing folder to a repository
# $ git status to see if it is repository
# $ git init to make it a repository
# Also can be done from R studio console
# > library(usethis)
# > usethis::use_git()
# $ git add .gitignore to add a file
# $ git commit to make it commit, it opens up vim text editor
# vim command in terminal I for type your message, esc key and :wq to get out of the text editor
# or $ git commit --m "Add Rproject to git"
# $ git add * for multiple files 
# $ git commit --m "Add multiple files to git"
# $ git status to check that if process is complete

# Lession 4: Developing code on GitHub----
# 
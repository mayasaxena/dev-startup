# Apprentice Startup

Welcome to the internal projects portion of the apprentice program! This guide contains a few pieces of information that might be helpful on your project.

## Git
If you need some help/a reference for our Git workflow, take a look [here.](git-flow.md)

## Bash Profile and Git Completion
When you start working in Terminal all the time, it's nice to have shortcuts for common commands. Those shortcuts are defined in a`.bash_profile` file in your home directory. This repo includes a sample `.bash_profile` with a few git aliases.

Another convenient script included here is Git completion. It allows you to tab-complete Git commands like other Terminal commands.

To get this up and running, copy both dotfiles from this repo to your home directory like so:
```
cp .bash_profile ~
cp .git-completion.bash ~
```
Then, run `source .bash_profile` to run the script and apply the changes. You should be able to use all the aliases defined and tab-complete Git.

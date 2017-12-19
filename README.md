# Apprentice Tools

This repository contains some links and instructions that may be useful to you.

## Bash Profile and Git Completion

When you start working in Terminal all the time, it's nice to have shortcuts for common commands. Those shortcuts are defined in a`.bash_profile` file in your home directory. This repo includes a sample `.bash_profile` with a few git aliases.

Another convenient script included here is Git completion. It allows you to tab-complete Git commands like other Terminal commands.

To get this up and running, copy both dotfiles from this repo to your home directory like so:
```
cp .bash_profile ~
cp .git-completion.bash ~
```
Then, run `source .bash_profile` to run the script and apply the changes. You should be able to use all the aliases defined and tab-complete Git.

## Helpful Links

- [Common Git Actions](git-actions.md)
    - Cheatsheet for common Git actions
    - Explanation of `git add` and its various options
- [Merging vs. Rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)
    - Information on how merging works vs. how rebasing works
    - Diagrams for what merge and rebase workflows look like

## [Sherpa](https://github.com/IntrepidPursuits/sherpa)
Intrepid's development best practices.
- [Git Cookbook](https://github.com/IntrepidPursuits/sherpa/blob/master/git/git_cookbook.md)
    - Alternate method to install Git completion
    - More Git alias examples
    - Useful Git commands
- [Git Workflow](https://github.com/IntrepidPursuits/sherpa/blob/master/git/git_workflow_quick_reference.md)
    - Reference sheet with info about branch organization and feature workflow
    - Instructions for resolving merge conflicts
    - Explanation on why we use a rebase workflow
    - [Pull request guidelines](https://github.com/IntrepidPursuits/sherpa/blob/master/pull_request_guidelines.md)

#### iOS
- [Project Setup](https://github.com/IntrepidPursuits/sherpa/blob/master/ios/ios_project_setup.md)
    - How to create a Github repo with a `.gitignore` and Xcode project
    - How to add Cocoapods

# Git Branching Flow Guide
### Table of Contents
1. [Background](#background)
2. [Practical Applications](#practical-applications)
    1. [Example](#example-git-flow)
3. [TL;DR](#tldr)

## Background
Read [this tutorial](https://www.atlassian.com/git/tutorials/merging-vs-rebasing/workflow-walkthrough). It provides a good, in-depth explanation
about rebasing vs. merging and why it's a good idea to choose a rebase
workflow.

## Practical Applications
Now that you understand why rebasing is a better idea than merging, here's how to actually start doing that.

Your repo should be set up with a `master` branch that contains
the most recent completed version of the app. If you're just starting out, it doesn't contain much at all.

There should be a branch off of `master` called `develop`. It has the most recent version of the app that's still in progress.

Off of `develop` you will create feature branches. As implied by the name, a feature branch holds a feature that someone is working on - each feature branch contains a feature-in-progress. The best practice for naming feature branches is the name of the developer whose feature it is, followed by a slash and the name of the feature, with words separated by dashes.

### Example Git Flow
I want to start working on a new feature. I have run `git clone` and have a local copy of the repository and I am in the top level directory on the `master` branch. First off, I `git pull` so I have the most recent version of the repo. Then, I switch to the branch I want to base my new branch off of by running `git checkout develop`. I run `git pull` again to make sure `develop` is also up to date.

To create my branch, I run `git checkout -b maya/new-feature`, which creates and switches me to a new local branch called `maya/new-feature`. This branch does not yet exist in the remote repo, so to add it I use `git push -u origin maya/new-feature`. The `-u` links my local branch with the remote branch, and the push actually updates the remote.

Since the creation command switched me to my new branch, I begin work as usual, and once I want to commit, I use `git add -A` (for more information about `git add`, see [below](#git-add)), `git commit -m "Add new feature"` and `git push` (talk to me about modifying your git so you don't have to type `git push origin <branch_name>` every time).

Once I'm done with the feature, I add, commit and push as usual, and then start to rebase. I `git checkout develop` to switch to the base branch and then `git pull` so I know it's the most recent. Then I `git checkout maya/new-feature` and run `git rebase develop`, which takes all the changes I made and moves them to after the most recent commit in `develop`.

`git rebase` moves the changes by applying each commit in the order they occurred, one by one. As the commits are applied, I get an error saying I have merge conflicts. I resolve them by searching my code for conflict markers and updating the code so it looks like what I want it to look like in the end. I run my project to make sure I fixed the conflicts correctly. Then I run `git add -A`, and `git rebase --continue`. Once all the commits have been applied and my branch is rebased and the code works as planned, my branch is now rebased off of `develop`. I create a pull request on Github by going to our repo page and clicking the "Create Pull Request" button by my branch. I make the changes requested in PR review. After the pull request is verified, I can merge my branch into develop and delete it.

In this case, Github does the merging for me, but if I didn't want to use their interface, I would `git checkout develop` and `git merge --no-ff maya/new-feature` and that would do the same thing.

I delete my remote branch, either using the handy button in the PR, or by running `git push -d origin maya/new-feature`. Then I delete my local branch, using git branch -d maya/local-feature

And then I'm done with the feature, so I move on to the next one by repeating the above process.

## TLDR

#### To create a feature branch
```
git checkout develop
git pull
git checkout -b <branch-name>
git push -u origin <branch-name>
```
<br>

#### To commit on my feature branch
```
git add -A
git commit -m "<Make some changes>"
git push origin <branch-name>
```
<br>

#### To rebase onto develop after finishing a feature
```
git checkout develop
git pull
git checkout <branch-name>
git rebase develop
```
<br>

#### To merge rebased feature branch into develop
Create a pull request

*or*

```
git checkout develop
git merge --no-ff --log -m "Merge <branch-name>" <branch-name>
git push origin develop
```
#
#### Git Add
![](images/git-add.jpg)

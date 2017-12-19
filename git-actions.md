# Common Git Interactions

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

#### To rebase my feature branch onto `develop`
```
git checkout develop
git pull
git checkout <branch-name>
git rebase develop
```
<br>

#### To merge a rebased feature branch into `develop`
Create a pull request on Github

*or*

```
git checkout develop
git merge --no-ff --log -m "Merge <branch-name>" <branch-name>
git push origin develop
```
#
#### More Info About Git Add
![](images/git-add.jpg)

---
layout: post
---

# Creating GitHub repository

My approach of creating repos is to create it first in github and then to clone it locally with generated https url.

```sh
   $ git clone https://github.com/PetyoKostakov/AgileDevelopingSystem.git
```

# Creating branches [[LINK]](https://help.github.com/articles/create-a-repo)

One of the base ideas of git is to 'keep master stable'. For this reason it us important every contributor in the team to have separate branch were he will develop. The code of this branch will be merged in master branch only if other team members review it and if integration test exists to pass them all. After that we assume that the code is stable and after that is merged to mater. By this way we keep the master stable.

### How to create branches?

Branches are created with this command in your repository folder. I personally use this convention for naming branches [name_of_developer]-dev. In my case my developer branch will be pkostakov-dev

```
    git branch [name_of_the_branch]
```

When you create branch you are not into this branch for that reason you must checkout it.

```
    git checkout [name_of_the_branch]
```

There is faster way for creating and switching to branch. The command under will create branch and will switch to it automatically,

```
    git checkout -b [name_of_the_branch] 
```

### Listing branches

If you want to list all branches use this command:

```
    git branch -al
```

--------------------------------------

# Update

Sometimes projects are dynamic and while you are working on some code, other contributor may be working too so in order to have latest version and avoid conflicts it's nice to be up to date with the origin repository.

If you forked repository you must specify which repository to be the upstream. [[LINK]](https://help.github.com/articles/fork-a-repo)

``` sh
    git remote add upstream [main-repo-url]
```

Update branch with last changes from master branch

``` sh
    git pull --rebase upstream master #if you clone the repo and you are contributor
    git pull --rebase origin master #if your local repo is forked
```

---
layout: post
---

# Creating GitHub repository



# Creating branches

One of the base ideas of git is to 'keep master stable'. For this reason it us important every contributor in the team to have separate branch were he will develop. The code of this branch will be merged in master branch only if other team members review it and if integration test exists to pass them all. After that we assume that the code is stable and after that is merged to mater. By this way we keep the master stable.

## How to create branches?

Branches are created with this command in your repository folder. I personally use this convention for naming branches [name_of_developer]-dev. In my case my developer branch will be pkostakov-dev

```
    git branch [name_of_the_branch]
```

When you create branch you are not into this branch for that reason you must checkout it.

```
    git checkout [name_of_the_branch]
```

If you want to list all branches use this command:

```
    git branch -al
```


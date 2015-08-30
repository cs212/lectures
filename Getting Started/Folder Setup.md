# Folder Setup

It will make your life easier if you create a `CS 212` folder with the following subfolders:

  - `Workspace`: Holds your Eclipse workspace for this class. It will contain Eclipse metadata for each project, and the source code for any of your *unshared* projects that are not connected Github.
  
  - `Libraries`: Holds various 3rd party Java libraries later in the semester. For now, you can leave it empty.
  
  - `Repositories`: Hold your CS 212 Github repositories.

See below for more detail.

## Repositories

Within this folder, I recommend you keep your CS 212 Github repositories. Initially, you can `git clone` several read-only* repositories:

- `homework`: This repository will contain the latest homework templates and unit tests. 
- `projects`: This repository will contain the latest project templates and unit tests. 
- `lectures`: This repository will contain the latest example code from lecture.

Any time the instructor updates the code in these repositories, you can perform a `git pull` to update your local clone. This will perform a `git fetch` to get the updates from the remote repository, and then perform a `git merge` to merge those changes into your local clone. 

:warning: Only the instructor and TA can `git push` to the above repositories. If you make any changes to the code in these repositories, you will run into issues keeping them up-to-date with the `git pull` command.

I also suggest you keep your private submission repositories in this folder. They will be as follows (replace `username` with your myUSF username):

- `cs212-username-homework`: This repository will contain your homework submissions. 
- `cs212-username-projects`: This repository will contain your project submissions.

You, the TA, and the instructor will have the ability to update the code in those repositories. Before you start working, make sure you perform a `git pull` so that you have the latest version of the code. And, when you are done working, make sure you perform a `git push` so that everyone can see your latest changes.

:warning: If you get out-of-sync with the remote repository, you will cause a conflict. These require manual intervention to resolve, and can cause a huge headache if you are not careful!


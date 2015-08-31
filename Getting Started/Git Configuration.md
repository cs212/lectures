# Git Configuration

## Configure SSH Keys

This will let you access your GitHub repositories in Eclipse without having to reenter your username and password each time. For instructions, please see:

- [Eclipse: SSH Configuration](https://wiki.eclipse.org/EGit/User_Guide/Remote#Eclipse_SSH_Configuration)
- [Github: Generating SSH Keys](https://help.github.com/articles/generating-ssh-keys/)

The steps above can be summarized as:

1. Start by generating a RSA or DSA key in Eclipse (steps in first link). It is up to you whether you want to include a passphrase. Using a passphrase is more secure, but more cumbersome as you have to enter the passphrase to use the key.

  *:warning: Make sure you click "Save Private Key..." after generating.*

2. Copy the public key text (in the large text area) from Eclipse into your Github SSH keys settings.

## Configure Git Perspective

Once you have your SSH keys setup, you can now clone your Github repository in Eclipse as follows:

1. Copy the SSH clone URL for your repository in Github.

  *:warning: Make sure you are cloning the SSH URL and not the HTTPS or Subversion URLs.*

2. Open up the Git Perspective in Eclipse by selecting "Window » Perspective » Open Perspective » Other..." from the menu, and selecting "Git" from the dialog window that pops up.

3. Click the "Clone a Git repository" link in this window. Click the "Next" button until you get to the "Local Destination" options.

4. Choose a director to store the local repository. If you followed the setup before, this should be within your "CS 212" directory but in a separate folder from your workspace!

  *:warning: Make sure you place this in a separate folder from your Eclipse workspace. Do not try to nest it within your workspace folder.*

You should see your repository show up in the "Git Repositories" window if everything worked. This window is useful for cleaning up your repository, but hopefully you will never need to interact with it directly.

## Development Loop

When using any code repository like this, it is now possible that there are multiple copies of your code at multiple different locations (your personal laptop, the lab computers, on the instructor's computer, and so on). To avoid conflicts, get used to the following workflow:

1. Right-click on the root project folder and select "Team » Pull". If there were changes made, they will show up under the "Fetch" output and will be automatically merged into your current branch.

2. Periodically commit your changes as you work. Every commit creates a local checkpoint allowing you to "undo" your changes. You can do this via the "Git Staging" view pane, or the "Team" menu.

3. Push your changes before closing Eclipse. This will save all of your commits to your remote Github repository, and is a key step to keeping your other clones up to date.

*:warning: Failure to make sure you are working on the latest version of your code will result in conflicts, which can be tricky to resolve!*

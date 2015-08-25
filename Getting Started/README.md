# Getting Started

This document will help you get started with Java 8 and Eclipse Mars. Both of these are available for most systems, including Mac, Windows, and Linux.

## Installation

### Install Java JDK

You need to download the latest **Java Development Kit (JDK)** for **Java Standard Edition (SE) 8**. You can download the installer for your system at:

<http://www.oracle.com/technetwork/java/javase/downloads/index.html>

Follow the installation prompts. Install this first, *before* you try to install Eclipse.

*:warning: Do not download the Java Runtime Environment (JRE), which is included in the JDK, or the Enterprise Edition (EE) version.*

### Install Eclipse

You need to download the **Eclipse IDE for Java Developers** package from the latest latest **Eclipse Mars (4.5)** release. You can download the installer for your system at:

<http://www.eclipse.org/downloads/packages/eclipse-ide-java-developers/marsr>

Extract the executable and place it with your other applications on your system. This version of Eclipse already has built-in support for Git.

*:warning: Do not download the Neon release, which is still in development, or the Eclipse IDE for Java EE Developers.*

### Install Github Client

*Optional:* You may also install **Github Desktop** for a simple interface for keeping your local and remote Github repositories synchronized. This is very useful if your repositories get mangled in Eclipse somehow.

<https://desktop.github.com/>

When installed, login with your Github account. However, I recommend you do *not* clone anything just yet, as we will do this within Eclipse.

## Eclipse Configuration

### Configure Workspace

When you run Eclipse, you will first be asked for a workspace. I recommend creating a workspace **per class**. Choose an appropriate location for your workspace, as all of your code will be stored there.

It is important you keep your local workspace folder and repository folders separate! You will also want a folder for 3rd party libraries, so I suggest having a "CS 212" parent folder with a "Workspace", "Repositories", and "Libraries" subfolders.

### Configure Eclipse

Eclipse is a powerful and customizable IDE that **will** make your life easier if you learn to use it. If you want, it can keep your code properly formatted for you! Here are some useful configuration settings:

- **Configure Fonts:** Go to "General » Appearance » Colors and Fonts" in the "Preferences" window, and select "Basic » Text Font". Choose a beautiful fixed-width font. My favorite is [Source Code Pro Light](https://github.com/adobe-fonts/source-code-pro), but [Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html), [Anonymous Pro](http://www.marksimonson.com/fonts/view/anonymous-pro), and [M+](http://www.macwright.org/2014/07/09/mplus.html) are good alternatives. See [Google Fonts](https://www.google.com/fonts) for more options and downloads.

- **Configure Text Editor:** Go to "General » Editors » Text Editors" in the "Preferences" window and customize your settings. I prefer to select the following options:
  - "Insert spaces for tabs"
  - "Highlight current line"
  - "Show print margin"
  - "Show line numbers"
  - "Show range indicator"

- **Configure Cleanup:** Go to "General » Java » Code Style » Clean Up" in the "Preferences" window and click "New" to create custom settings. You may want to consider looking at the following options:
  - "Format source code"
  - "Remove trailing whitespace"
  - "Correct indentation"
  - "Organize imports"
  - "Use blocks in if/while/for/do statements"
  - "Use parentheses in expressions"

  *:warning: This is only worthwhile to configure if you plan to use the "Clean Up" command on your code. See "Save Actions" below as an alternative.*

- **Configure Formatter:** Go to "General » Java » Cdde Style » Formatter" and click "New" to create custom settings. I personally have specific preferences regarding tabs and how braces and newlines are formatted.

  *:warning: Be careful of getting too far away from the standard when customizing the formatter. Skip this step if you do not have any strong preferences!*

- **Configure Save Actions:** Go to "General » Java » Editor » Save Actions" and select "Perform the selected actions on save", then click the "Configure" button for additional actions. You may want to consider looking at the following options:
  - "Remove trailing whitespace"
  - "Correct indentation"
  - "Use blocks in if/while/for/do statements"
  - "Use parentheses in expressions"
  - "Remove unused imports"

There are several other options that may be useful, like the "Templates" or "Typing" settings in the "Java » Editor" section, and many more.

### Configure Java Perspective

You can control the layout of each pane in the Java Perspective (the main perspective you'll use). Go to the "Window » Show View" menu to see various options.

- **Package Explorer:** Lets you navigate all of the projects and files in your workspace.
- **Console:** Shows the console output of your code.
- **Javadoc:** Automatically shows Javadoc for the element under the cursor. (You can configure this to use a local copy of the Javadoc, otherwise it requires an Internet connection.)
- **Declaration:** Forget how you defined a variable? This will show the declaration of variables under the cursor.
- **Outline:** Provides easier and quick navigation of your code.
- **Tasks:** Shows all of the TODO comments you defined.
- **Git Staging:** Lets you know what changes you have made that are not yet committed and pushed to your remote repository.

You can drag and drop these view panes into multiple configurations. Try playing around with the views to get something you like.

## Git Configuration

### Configure SSH Keys

This will let you access your GitHub repositories in Eclipse without having to reenter your username and password each time. For instructions, please see:

- [Eclipse: SSH Configuration](https://wiki.eclipse.org/EGit/User_Guide/Remote#Eclipse_SSH_Configuration)
- [Github: Generating SSH Keys](https://help.github.com/articles/generating-ssh-keys/)

The steps above can be summarized as:

1. Start by generating a RSA or DSA key in Eclipse (steps in first link). It is up to you whether you want to include a passphrase. Using a passphrase is more secure, but more cumbersome as you have to enter the passphrase to use the key.

  *:warning: Make sure you click "Save Private Key..." after generating.*

2. Copy the public key text (in the large text area) from Eclipse into your Github SSH keys settings.

### Configure Git Perspective

Once you have your SSH keys setup, you can now clone your Github repository in Eclipse as follows:

1. Copy the SSH clone URL for your repository in Github.

  *:warning: Make sure you are cloning the SSH URL and not the HTTPS or Subversion URLs.*

2. Open up the Git Perspective in Eclipse by selecting "Window » Perspective » Open Perspective » Other..." from the menu, and selecting "Git" from the dialog window that pops up.

3. Click the "Clone a Git repository" link in this window. Click the "Next" button until you get to the "Local Destination" options.

4. Choose a director to store the local repository. If you followed the setup before, this should be within your "CS 212" directory but in a separate folder from your workspace!

  *:warning: Make sure you place this in a separate folder from your Eclipse workspace. Do not try to nest it within your workspace folder.*

You should see your repository show up in the "Git Repositories" window if everything worked. This window is useful for cleaning up your repository, but hopefully you will never need to interact with it directly.

## Creating Projects

These steps assume you have already followed the steps above to clone your Github repository to a local copy.

### New Shared Project

If you want to create a new project from scratch and add it to your Github repository at the same time, follow these steps:

1. Go to "File » Import" in the menu. In the dialog that opens up, select "Git » Projects from Git" and click the "Next" button.

2. Select "Existing local repository" and click the "Next" button.

3. Select "Import using the New Project wizard" and click the "Finish" button.

4. From the next window, select "Java » Java Project" and click the "Next" button.

5. Give your project a meaningful name. Use CamelCase instead of spaces.

You will have to commit and push before your project will appear on your remote Github repository.

### Share Existing Project

If you want to add an existing project to your Github repository, follow these steps:

1. Right-click on the root project folder and select "Team » Share Project..." from the menu.

2. Select your local Github repository from the dropdownm and then click the "Finish" button.

  *:warning: Make sure the "Use or create repository in parent folder of project" is NOT selected!*

You will have to commit and push before your project will appear on your remote Github repository.

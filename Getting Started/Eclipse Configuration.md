# Eclipse Configuration

## Configure Workspace

When you run Eclipse, you will first be asked for a workspace. I recommend creating a workspace **per class**. I suggest you create a separate subfolders for 3rd party libraries and repositories as well. For example, you might have a "CS 212" folder with the following subfolders:

  - `Workspace`: Holds your Eclipse workspace for this class. It will contain Eclipse metadata for each project, and the source code for any of your *unshared* projects that are not connected Github.
  
  - `Libraries`: Holds various 3rd party Java libraries later in the semester. For now, you can leave it empty.
  
  - `Repositories`: Hold your CS 212 Github repositories, including read-only template code from the instructor and your submission repositories.

*:warning: It is important you keep your local workspace folder and repository folders separate!* 

## Configure Eclipse

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

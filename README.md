# arm-workshop

This area is a template repository, used by the Citadel ARM workshop at <https://aka.ms/citadel/arm>. 

If you are working through the series of labs in this workshop then you will need a GitHub account and to have met all of the other [prereqs](https://azurecitadel.github.io/workshops/arm/#pre-requisites).  You will not be able to complete the fork, clone and test in this guide unless you have configured vscode and installed git into the operating system. 

## Fork and Clone

You should then fork this repository into your GitHub account and then clone it to your laptop using vscode. Follow these instructions:

1. Click on the Fork button at the top right:

![Fork](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/fork.png)

2. Select your personal GitHub account
3. The repo will be forked as `https://github.com/<user>/arm-workshop`
4. Click on the _Clone or download_ button and click on the copy icon: 

![Fork](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/clone.png)

5. Open up a new Visual Studio Code window
6. Type `CTRL`+`SHIFT`+`P` to open the Command Palette
7. Type `clone` until Git: Clone appears then select it:

![Command Palette](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/commandPalette.png)

8. Paste in the `https://github.com/<user>/arm-workshop.git` repository URL
9. Select the destination directory
    * You can choose a default clone directory in Settings (`CTRL`+`,`)
    * E.g. `"git.defaultCloneDirectory": "C:\\Users\\username\\git"`
10. Click on _Open Repository_ when prompted

Your vscode should now look similar to this:

![Cloned Repo](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/cloned.png)

## Testing

Let's create a test file to check that the Git integration is working correctly.  

We will create a new file, stage the change locally and then finally commit it to the local clone of the repository. (Whenever you commit you need to include a message to describe that commit.) The commit will only be local at that point, so we will then push (or sync) so that you can confirm the change is in your GitHub repo.

1. Create a new file called deleteme.md in vscode 
2. Add in some text, such as the following:

```markdown
# Test File

This is a test markdown file. 
```

3. You should see a round blob on the file's tab to show that is has unsaved changes
4. Click `CTRL`+`S` to save the file
    * The Source Control icon on the sidebar should now show the number 
5. Click on the Source Control icon, or use `CTRL`+`SHIFT`+`G`
6. Hover over the deleteme.md filename and click on the `+`
    * This stages the changed file
7. Type in a message to describe the commit such as _Initial commit_
8. To commit, either click on the tick (or check), or type `CTRL`+`ENTER`:

![Commit](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/commit.png)

9. Push the commited change up, using either Push from the ellipsis (`...`) menu, or by clicking on the sync in the status bar:

![Sync](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/sync.png)

10. Browse to your <https://github.com/\<user>/arm-workshop> repo fork
11. Refresh the page to reflect the change

![Refresh](https://raw.githubusercontent.com/azurecitadel/arm-workshop/master/images/refresh.png)

Once you have confirmed that everything is working well then you should be good to continue with the [labs](https://azurecitadel.github.io/workshops/arm/#index).
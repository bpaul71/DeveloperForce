# DeveloperForce

## Eclipse Notes

### Repository created using Eclipse
This repository was created using Eclipse 4.x (Mars) and the Force.com IDE.  The are two reasons for setting up this repository with Eclipse  
1. There are still a fair number of devlopers using Eclipse.  
2. In order for Eclipse to work properly with GitHub repositories it needs to have all of the Eclipse files saved into GitHub.  

### Setting up Eclipse for SFDC development using GitHub
If you don't yet have **Eclipse** and the **Force.com IDE** then follow these [Force.com IDE Installation](https://developer.salesforce.com/page/Force.com_IDE_Installation) instructions.  

Install the **Git plugin** for Eclipse by following the directions on [this website](http://www.vogella.com/tutorials/EclipseGit/article.html#eclipseinstallationgit)  

#### Setting up your **Perspectives** and **Views** in Eclipse
There are two main Perspectives that you will use during your development, **Force.com** and **Git**.  
For each Perspective it is recommended that you turn on the Git toolbars.  

From within each Perspective follow the below steps  
1. Click on **Window** --> **Perspective** --> **Customize Perspective**  
2. Go to the **Action Set Availability** tab and in the **Available Action Set** select the **Git** and the **Git Navigation Actions** options  
3. Go to the **Tool Bar Visibility** tab and verify the **Git** option is checked  
4. Click **OK**  

The next suggested change is to your Git Perspective.  It is recommended that within that Perspective you open the **Package Explorer** View.  You use this **Package Explorer** view to help you see and commit your changes that show up in the **Git Staging** view.


### Creating your Eclipse project
You may already be doing your work in an existing Eclipse project that is connected to a Sandbox.  It is recommended that you no longer use that existing project and create a new Eclipse project by following these steps...  
1. Open Eclipse to the desired directory  
If this is a new Eclipse directory you may need to setup your **Force.com** and **Git** perspectives as described in an above section.  
2. Switch to the **Git** perspective  
3. Choose the option to **Clone a Git repository**  
4. Enter the URI to the repo - **FILL IN THE REPO NAME**  
5. Enter your GitHub credentials  
6. Click **Next**  
7. Be sure to have **master** selected as well as any sandbox branches that are appropriate to you  
8. Click **Next**  
9. Select a directory on your hard drive that differs from your eclipse directory.  An example might be c:\GitHub\Commercial_SFDC  
10. Click **Finish**  
11. Using the **Git Repositories** view navigate to the **Branches** --> **Local** folder to select the branch that represents your sandbox  
If you don't have a branch that represents your sandbox then use the **Checkout branch, tag, or reference** toolbar button to create a branch that is the same as your sandbox name.  
12. Switch to the **Force.com** perspective  
13. Select **File** --> **Import** --> **Git** --> **Projects from Git** and click **Next**  
14. Select **Existing local repository** and click **Next**  
15. Select the **Commercial_SFDC** repository and click **Next**  
16. Choose the **Import existing Eclipse projects** option and click **Next**  
17. Click **Finish**  
18. If you get an error you can ignore it by clicking **OK**  
Note: at this point your eclipse directory will not actually contain your source code.  Eclipse is now working out of the directory you saved the GitHub repository to.  When using eclipse you will still need to open the eclipse directory, not the GitHub directory.
19. Right click the **Commercial_SFDC** project and select **Force.com** --> **Project Properties**  
20. Enter your credentials for your sandbox  
21. When asked if you'd like to refetch and overwrite your Force.com components select **Yes**  

Now your branch has all of your code.  You can selectively decide what to push up to higher branches.

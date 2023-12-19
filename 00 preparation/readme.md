# Welcome to Astro 201! 

In this class you will learn some of the computer skills you will need to succeed as an Astro major. 

Lecture notes are available on Teams (`DFAS Public Files/A201/`). 

Students in this section will use git for version control and submit assignments via github. 



## version control

Configuration control is a vital part of any complex engineering project. The software world has mostly settled on git as the tool of choice for version control. 

As a student, using version control software is a way to prevent this problem. 

- `history essay.docx`
- `history essay 2.docx`
- `history essay 4 april.docx`
- `history essay final.docx`
- `history essay final final.docx`
- `history essay final final 2.docx`

This problem is much worse when collaborating with multiple people. 

Using version control, you will instead maintain a single file. Your version control tool will keep track of changes. It is comparable to a more powerful version of Word’s track changes feature. 

You are already familiar with multiple levels of file saving. Many files are saved in a directory (aka folder).

- **work** changes exist in memory and will be lost if computer crashes 
- **save** to file—changes/current version exist in file on hard drive
- **print** changes/current version saved on paper

Using git for version control incorporates additional steps. The project files are stored in a **repository**. The repository looks just like a folder with all of your current files in it, but git stores previous versions as well as additional metadata in hidden files/folders. 

- **work** changes exist in memory—git doesn’t yet know about changes
- **save** to file—git doesn’t yet know about changes
- **(add)** prepare to add files/changes to the repository. Some tools do this automatically. 
- **commit** the latest version to the repository

You still have only a single instance of the file in your repository/directory, but you can revert to previous versions if necessary. 

If you’re collaborating with other people or working from multiple computers, you have to add additional steps to sync work with the remote repository. 

- **pull** changes from the remote repository (origin) to your local repository
- **work**
- **save**
- **(add)**
- **commit**
- **push** your local changes to the remote repository (origin)



## tools

**Git** is a command line version control tool. We will use a GUI called Tortoisegit that integrates with Windows file explorer. 

**Github** (github.com) is a Microsoft-owned cloud-based git service.

Git works best with text-based files. You will use the **marktext** editor to work with markdown files. 

You may explore alternatives tools if desired. Some of them are better than the ones used in class. Typora is a better markdown editor, although it isn’t free. Sourcetree is a powerful git GUI—still free, but much more complicated. 



### install tools

Install the following tools. You can install any way you like, but the easiest way is to copy the winget installation command to the windows command line. 

`win`-`r` -> `wt` (or `cmd`) -> ok 

- **marktext**
  `winget install marktext.marktext`
- **git**
  `winget install git.git`
- **tortoisegit**
  `winget install tortoisegit.tortoisegit`
- **matlab** with **simulink**
- **STK**
  see instructions on Teams (`DFAS Public Files`)

You may also find a good text editor useful. I prefer notepad++.

- **notepad++**
  `winget install notepad++.notepad++`



### github account

Create an account at [github.com](https://github.com/) using your afacademy.af.edu address. Your user name should be `firstlastusafa`. 



## get started

- accept your assignment in github
  [https://classroom.github.com/a/Qqm8zfXo](https://classroom.github.com/a/Qqm8zfXo)
- refresh the page and copy the link of your personal repository 
  (link looks like this:) 
  `https://github.com/astro-201/2024-spring-your-username`
- go to `Documents` on your hard drive (or the location you want to store Astro 201 files)
- right click in the empty space
- git clone -> paste URL -> change directory* ok -> success
  - \* you may want your local directory to include ‘Astro 201’

- Open `01 student information/readme.md` in your markdown editor (marktext). 



## assignment submission

You will complete and submit all assignments as follows

- complete assignment, save, commit changes to your local repository
  - remember to change the *authorized resources* section to _documentation_
- push changes to origin/remote repository/github
- On github.com (not in tortoisegit) request a review using a pull request
  - click on *pull requests* -> *new*
  - **base**: feedback; **compare**: main
  - *create pull request*
  - **title**: add number and title of assignment (e.g. “06 structured programming”)
  - **description**: “ready for review”
  - add your instructor as a reviewer
    ![](../sources/reviewer.png)
  - click *create pull request* (again)
  - **NOTE**: don’t click “merge pull request” or “close pull request”—your instructor will do that
- If you need to make changes I will respond with comments in the pull request
- When you complete the assignment, I will approve the pull request and merge your changes into the `feedback` branch
- **NOTE**: don’t edit the `feedback` branch directly

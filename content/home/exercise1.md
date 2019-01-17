+++
weight = 20
+++

# A Git-centric workflow

* This is just a standard set of practices: there are many ways to Git
* The only real limitation is you: so keep your mental model of the project clear
* Clean commits
* Pull before you push
* Most important habit of all: Pause and think

----

# Steps: Prepare

1. Create a workspace
1. Clone from a remote
1. Create a working branch from integration branch

----

# Steps: Clean Commits

1. Stage up changes for each commit
1. Give each commit a clear description 

---

# Steps: Submit Changes

1. Merge from working branch to integration branch
1. Pull to ensure that your changes are clean
1. Push back to remote

----

# The Go convention for workspaces

*workspace* > *code-host* > *maintainer* > *repo*

So:

    mkdir ~/Projects
    mkdir -p ~/Projects/github.com/stuartellis
    
----

# Clone from remote

    cd ~/Projects/github.com/stuartellis
    git clone git@github.com:stuartellis/git-skills-1.git

The remote is auto-registered with the ID *origin*:

    git remote --verbose
	origin  git@github.com:stuartellis/git-skills-1.git (fetch)
    origin  git@github.com:stuartellis/git-skills-1.git (push)

----

# Do not open your editor!

* Run the setup and test processes before you edit anything
* Projects should build clean: Don't accept a broken setup process

----

# Still don't open your editor: branch first!

Think: What branch name will I understand later?

Always prefix branch names with a ID (ticket ID or human user ID):

    git checkout -b YOU-exercise1 

----

# Now let's edit some content...

----

# Git status says?

Check what Git thinks has changed:

    git status
	
----

# Think before you commit 

(As with all things in life)

* Stage up the changed files
* Commit with a clear message

----

# Merge to integration branch

----

# Pull before you push

----

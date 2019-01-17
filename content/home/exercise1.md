+++
weight = 20
+++

# A Git-centric workflow

* This is just a standard set of practices: there are many ways to Git
* The only real limitation is you: so keep your mental model clear

----

# Mantras

* Branches for features
* Every commit reverts clean
* Pull before you push

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

The source repo is set as the default remote, with the ID *origin*:

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

Always prefix branch names with a owner ID (ticket ID or human user ID):

    git checkout -b YOU-exercise1 

(Replace with YOU with your initials)

----

# Now let's edit some content...

----

# Think before you commit 

(As with all things in life)

* Stage up the changed files
* Will this revert cleanly?
* Commit with a clear description

----

# Merge to integration branch

Here our integration branch is *master*

----

# Always pull before you push!

Make this a habit, and you will never have rejected pushes

----

# Your turn!

----

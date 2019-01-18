+++
weight = 20
+++

# A Git-centric workflow

----

# Git is a UNIX command-line tool

This is what gives it power and precision.

(But sometimes a UI is helpful).

----

# Mantras!

----

# Stay in feature branches

Especially whilst learning

----

# Think in commits

...and you have reached Git enlightenment

----

# Please follow along

For the rest of this section, we're doing stuff.

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

The default branch is *master*:

    $ git branch
      master

----

# Do not open your editor!

* The project README should tell you how to set up
* Run the set up and test processes before you edit anything

OPINION: Projects should build clean. Don't accept bad docs or broken setup.

----

# Still don't open your editor: branch first!

Fill in the blank: this branch is a sequence of commits that changes [BLANK]

Always prefix branch names with a owner ID (ticket ID or human user ID):

    git branch YOU-ex1-theme
	git checkout YOU-ex1-theme

(Replace with YOU with your initials)

----

# Now let's make a change...

Start up Hugo.

Then, edit the config.toml file, and delete the *custom_theme* line.

Stage and commit the change:

    git add config.toml (stage changes in this file)
    git commit -m "Change theme"

----

# Check the site again in the browser

----

# ...and revert the change

The *git revert* command reverses the effect of the given commits:

    git revert HEAD

(We'll see revert and HEAD again in the next section)

----

# Dark theme or light theme?

You decide :)

----

# Be methodical

FIRST decide what the task is

Then:

1.  Get the right branch
1. Make the edits for a specific change
1. Stage up the changed files
1. Ask: will this revert cleanly?
1. Commit with a clear description

...and repeat

----

# Careful staging makes clean commits

Every time that you run *git add*, you are whitelisting changes.

Don't get trigger-happy.

Clean commits enable features like *revert* and *cherry-pick* to work

If you find you've stopped thinking, stop committing

----

# Don't hesitate to unstage changes

The *git reset* command:

    git reset HEAD myfile.txt

----

# Merge to integration branch

Collect a complete sequence of good commits in your feature branch,
then merge to a branch that you use for integrating features.

The default branch for integration is *master*, since it's guaranteed to be present. 

----

# Always pull before you push!

Make this a habit, and you will never have rejected pushes.

Remember that any shared branch can change without you.

----

# Your turn!

1. Create a feature branch
1. Edit content/home/questions.md
1. Replace *YOU* with your name  
1. Write a question or comment that you have about Git, and commit it
1. Merge, pull and push

We are all merging to master: let's see what happens

----

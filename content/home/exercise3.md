+++
weight = 60
+++

# Working with branches

----

# Recap

Things that we already know...

----

# Technical

* Branches are pointers to the freshest commit on a line 
* Dirt cheap: 1Kb files
* Have as many as you want

----

# Conventions

* Branches should have owners
* Feature branches vs. integration branches

Conventions avoid confusion with many branches

----

# "Git flow" is a good set of conventions 

In Git flow:

* *master* is the stable version of the project
* There's an integration branch, called *develop*
* Features are developed on feature branches, and then put into *develop*
* Code moves from *develop* branch to *master* for releases

----

# Let's try that...

I'll create a develop branch

Then we'll re-integrate feature branches from exercise 1

Then we'll promote to master to make a "release"

----

# How do we identify a release?

Branches are moving targets...

----

# Use tags!

* Tags are aliases to specific commits
* Unlike branches, they can't change (only create or delete)
* I always use the *annotated tags* feature
* Tags must explicitly be shared: you might have local-only ones  

----

# Creating a tag

Please try this yourself:

    $ git tag -am "Local build 2019-01-18" v0.2.0-local

The tag is currently local to your copy of the repository.

----

# Creating and sharing a tag

I'll now create a tag and push it:

    $ git tag -am "Release for 2019-01-18" v0.3.0-release
	$ git push --tags

Please run git pull, and you should get my new tag.

----

# Briefly: Trunk-based development

* A different way of thinking
* The argument is that you should resist branching:

"A source-control branching model, where developers collaborate on code in a single branch called ‘trunk’ *, 
resist any pressure to create other long-lived development branches by employing documented techniques.
They therefore avoid merge hell, do not break the build, and live happily ever after."

https://trunkbaseddevelopment.com/

+++
weight = 40
+++

# Git is a database

----

# There will be a short talky bit

----

# Where's the database, then?

* The *.git* directory is the database
* The main working directory is the source
* The commit records are selective snapshots of the working directory

----

# Demo: Don't try this at home

A .git directory with no files

...still works

Everything is in the database.

Working files are completely disposable.

----

# Selective filesystem snapshots

Git snapshots the working directory on each commit. Kind of.

Git stores versions as files as *blobs* of file contents, plus metadata.

It records an ideal world: the state of unchanged files, with your staged changes.

It ignores changes that have not been staged.

----

# However: Git is optimized for text

"Git is a stupid content tracker"
- Linus Torvalds

Example features for text:

* Git runs *diff* on demand to figure out lines added, lines removed, lines changed between files.
* The *git revert* command creates a new commit that changes the same lines as the original, but does the opposite action in each case.

----

# Those commit IDs....

* Git is content-addressable storage
* Each commit ID is derived from the "content" for the commit
* Specifically, 40 character SHA1s

The "content":

* The source tree of the commit (the snapshot bit)
* The SHA1s of parent commits (merges have a parent per branch)
* The author & committer metadata
* The commit message

----

# So, how do we use it?

Here ends the talky bit

Please do try the commands from here on.

----

# Branches are pointers to commits

It's just a file with a commit ID string in it:

    $ cat .git/refs/heads/master
    d9b12c2cc518d786a3b0e344d9c4ebb86a4a6603

Every commit, the ID is written into the file for the current branch

----

# HEAD is a pointer to the current branch

    $ cat .git/HEAD
    ref: refs/heads/master

So ultimately, it is just another pointer to the ID of the most recent commit.

----

# Short commit IDs

Internally, Git uses 40 character commit IDs.

*BUT*, the first seven characters of the commit ID are enough to uniquely identify a commit:

    $ git show d9b12c2

To be human-friendly, commits are referenced by their first seven characters in many places. 

---

# Examining individual commits

    $ git show HEAD

Notice that it's using diff to show the content of the commit.

----

# Comparing commits

Let's call *git diff* ourselves.

Show the diff between HEAD and the working directory:

    $ git diff HEAD

Show the diff between HEAD and the parent of HEAD:

    $ git diff HEAD HEAD~1

----

# The Git transaction log: reflog 

    $ git reflog
    d9b12c2 (HEAD -> master, origin/master, origin/HEAD) HEAD@{0}: commit: Skeleton Exercise 2
    c0b2601 HEAD@{1}: commit: Finish exercise 1 draft     
    a168348 HEAD@{2}: commit: Add LICENSE file
    ea6972f HEAD@{3}: commit: Exercise 1 draft
    b56490d HEAD@{4}: commit (amend): Exclude Hugo executable
    e2fc596 HEAD@{5}: commit: Exclude Hugo executable
    9593626 HEAD@{6}: clone: from git@github.com:stuartellis/git-skills-1.git

(UNIX team-ups: use *less*, *grep*, and friends to mine the reflog)

----

# Command-line queries

The *git log* command is the Swiss Army knife for querying Git:

* Works with content of commits as well as commit message text
* Powerful filtering options
* Multiple output formats, including graphs 

(Again, it also integrates perfectly with other UNIX command-line tools)

----

# Round 1: CLI

    $ git help log

1. Create a feature branch
1. Write a *git log* command that works: use any options that you like
1. Then use the *contents/home/log_snippets.md* to share it

----

# Round 2: OK, there's a GUI

It's built-in to Git. Just type:

    gitk

Cross-platform! Available in every Git distribution!

It's equally ugly everywhere. Sorry.

The GitLens plugin for VS Code is an example of nicer UI.

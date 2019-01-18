+++
weight = 80
+++

# Bonus exercise: Docker and Git

----

# Ponder this...

* We can uniquely identify any state with commits and tags
* We can uniquely identify a moving line of development with branches
* So, we can compile artefacts for any state
* Each artefact will then automatically have a identifier

----

# Docker + Git

* Docker is modelled on Git 
* Docker, like Git, is snapshots
* It use content addressable IDs
* ...and has tags

----

# So, why not create Docker images for commits?

This project has an example shell script for a *build* container

We can make this Website deployable by packaging the content into *release* Docker images

----

# Over to you

How would we do it?

# Git Skills 1

This presentation is a Website built with the [Hugo](https://gohugo.io/) generator and the [reveal-hugo theme](https://reveal-hugo.dzello.com), which uses [reveal.js](https://github.com/hakimel/reveal.js).

# Prerequisites

* Git: On Windows, use [Git for Windows](https://git-scm.com)
* Hugo
* A UNIX shell: On Windows, use the Git bash shell
* Optional: Docker

The example commands in this workshop are for a UNIX shell. If you are using Windows, open a *Git Bash* window and run the commands in it.

Use whichever text editor you prefer.

## Setup

Hugo is a self-contained binary.

### Windows

1. Download the latest release ZIP from GitHub: https://github.com/gohugoio/hugo/releases
1. Unzip the release
1. Copy the *hugo.exe* file to the root of this project
1. Make Hugo executable:

    $ chmod 0700 ./hugo.exe

### macOS or Linux

1. Download the latest release ZIP from GitHub: https://github.com/gohugoio/hugo/releases
1. Unzip the release
1. Copy the *hugo* file to the root of this project
1. Make Hugo executable:

    $ chmod 0700 ./hugo

### Docker on macOS

> The Docker configuration in this project does not current run on Windows. 

The *do.sh* utility script provides tools for building and running the site.

Run the *setup* subcommand to build the Docker container:

```bash
./do.sh setup
```

## Usage

To view the content, we use the *serve* subcommand of Hugo. This generates the Website from the text files in this repository, and makes the site available at this address:  

http://localhost:1313/

If you save a change to the text files, the Website will instantly update.

### Windows

```bash
./hugo.exe serve
```

### macOS and Linux

```bash
./hugo.exe serve
```

### Docker on macOS

To view the content, use the *serve* subcommand of the *do* script:

```bash
./do.sh serve
```

## Creating a PDF

This site includes support for [print as PDF](https://github.com/hakimel/reveal.js#instructions-1). To save the whole presentation as a PDF file, open the site in a Chromium browser, with the ?print-pdf string in the address:

http://localhost:1313/?print-pdf#/

Then open Print in Chrome, set the Destination to *Save as PDF*, set the *Margins* to *None*, enable *Background graphics* option, and choose *Save*.
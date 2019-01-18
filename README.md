# Git Skills 1

This presentation is a Website built with the [Hugo](https://gohugo.io/) generator and the [reveal-hugo theme](https://reveal-hugo.dzello.com), which uses [reveal.js](https://github.com/hakimel/reveal.js).

# Prerequisites

* Hugo
* A UNIX shell: On Windows, use the Git bash shell
* Optional: Docker

Use whichever text editor you prefer to edit the content.

## Setup

### Any OS

Hugo is a self-contained binary. To set it up:

1. Download the latest release ZIP from GitHub: https://github.com/gohugoio/hugo/releases
1. Unzip the release
1. Copy the *hugo* or *hugo.exe* file to the root of this project
1. Make Hugo executable:

    $ chmod 0700 ./hugo.exe

### Docker on macOS

The *do.sh* utility script provides tools for building and running the site.

Run the *setup* subcommand to build the Docker container:

```bash
./do.sh setup
```

## Usage

### Any OS

To view the content, use the *serve* subcommand:

```bash
./hugo.exe serve
```

### Docker on macOS

To view the content, use the *serve* subcommand of the script:

```bash
./do.sh serve
```

## Creating a PDF

This site includes support for [print as PDF](https://github.com/hakimel/reveal.js#instructions-1). To save the whole presentation as a PDF file, open the site in a Chromium browser, with the ?print-pdf string in the address:

http://localhost:1313/?print-pdf#/

Then open Print in Chrome, set the Destination to *Save as PDF*, set the *Margins* to *None*, enable *Background graphics* option, and choose *Save*.
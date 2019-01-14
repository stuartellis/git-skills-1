# Presentation

This presentation is a Website built with the [Hugo](https://gohugo.io/) generator and the [reveal-hugo theme](https://reveal-hugo.dzello.com), which uses [reveal.js](https://github.com/hakimel/reveal.js).

# Prerequisites

* Docker: The Hugo application runs in a Docker container.
* A UNIX shell: The utility script should work in any POSIX shell.

Use whichever text editor you prefer to edit the content.

## Usage

The *do.sh* utility script provides tools for building and running the site.

Run the *setup* subcommand to build the Docker container:

```bash
./do.sh setup
```

To view the content, use the *serve* subcommand:

```bash
./do.sh serve
```

## Creating a PDF

This site includes support for [print as PDF](https://github.com/hakimel/reveal.js#instructions-1). To save the whole presentation as a PDF file, open the site in a Chromium browser, with the ?print-pdf string in the address:

http://localhost:1313/?print-pdf#/

Then open Print in Chrome, set the Destination to *Save as PDF*, set the *Margins* to *None*, enable *Background graphics* option, and choose *Save*.
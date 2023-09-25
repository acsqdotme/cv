# Ángel Castañeda's Résumé

Last year, I did a favor for my friend's dad and made him a new cv in
$\LaTeX{}$. I ended up converting my own cv and have maintained it on and off
ever since.

I was inspired by [EJ Mastnak](https://www.ejmastnak.com) to finally do the sensible thing
and version control my code instead of making more and more copies of it on
Overleaf.

## Getting a PDF

you can self compile by cloning this repo and just running `make` to get my cv
or `make cover` to get my (unsigned) cover letter template.

Or just visit [www.acsq.me/cv](https://www.acsq.me) to make it easy.

## How to make your own:

If you wanna graduate from overleaf too, you gotta install packages first. On
arch, I ran:

```console
$ sudo pacman -S texlive
```

Make a basic `main.tex` file like so:

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}

\title{My Awesome CV}
\author{John Smith}

\begin{document}
\maketitle

\section*{Skills:}

\begin{itemize}
  \item coding
  \item presenting
  \item counting money
\end{itemize}

\end{document}
```

Then compile with:

```console
$ pdflatex main.tex
# ...a bunch of output...
$ ls
main.aux  main.log  main.pdf  main.tex
```

there's a bunch of output files like `main.log` and `main.aux` that get made,
but they're only useful for debugging your broken code. open `main.pdf` to see
the end product.

That's an absolute start, but you can get way into it and make something more
customizable than whatever word or google docs could ever do.

Here's the [video that got me started](https://youtu.be/kMPCdUSsITE) and a
[set of videos](https://youtu.be/VjsX4tznW40) showing how cool vim and latex
can really be for a resume.

## TODO

* actually make acsq portfolio website
* figure out latex -> html for cool website integration

## License

This project is under the zero-BSD license. Check [LICENSE](./LICENSE) for more
details.

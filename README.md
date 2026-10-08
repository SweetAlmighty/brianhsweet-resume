# brianhsweet-resume

[![made-with-latex](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/) [![build](https://github.com/SweetAlmighty/brianhsweet-resume/actions/workflows/build.yml/badge.svg)](https://github.com/SweetAlmighty/brianhsweet-resume/actions/workflows/build.yml)

LaTeX source for my resume. `resume.tex` is the single source file.

The layout is based on a template by Jitin Nair (MIT License, 2021; see the header of `resume.tex`).

## Getting started

### 1. Install a TeX distribution

You need a TeX distribution that provides `pdflatex`, `latexmk` and `tlmgr`. [TinyTeX](https://yihui.org/tinytex/) or [TeX Live](https://tug.org/texlive/) both work.

Make sure `tlmgr` is on your PATH. For TinyTeX on macOS:

```sh
export PATH="$HOME/Library/TinyTeX/bin/universal-darwin:$PATH"
```

### 2. Clone the repo and install the required packages

```sh
git clone <repo-url>
cd brianhsweet-resume
./setup.sh
```

`setup.sh` runs `tlmgr install` for every package listed in [latex-packages.txt](latex-packages.txt). LaTeX packages are installed system-wide rather than per repo, so run this once on each new machine. If you add a `\usepackage` to `resume.tex` that isn't in the base install, add its name to that file.

### 3. Build

```sh
latexmk -pdf resume.tex
```

This produces `resume.pdf`. Run `latexmk -c` to remove build artifacts (or `latexmk -C` to also remove the PDF).

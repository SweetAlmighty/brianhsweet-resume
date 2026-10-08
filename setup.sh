#!/usr/bin/env sh
# Installs the LaTeX packages listed in latex-packages.txt using tlmgr (TeX Live / TinyTeX).
set -e
cd "$(dirname "$0")"
tlmgr install $(grep -v '^#' latex-packages.txt)

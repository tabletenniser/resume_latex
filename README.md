# Aaron Wang's resume

The current resume is [src/main.tex](src/main.tex), with its layout in
[src/plushcv.cls](src/plushcv.cls) and the compiled output in
[src/main.pdf](src/main.pdf).

Build with [Tectonic](https://tectonic-typesetting.github.io/en-US/install.html):

```sh
cd src
tectonic main.tex
```

Alternatively, run `xelatex main.tex` from `src` with a TeX distribution that
includes the required packages. The template uses bundled TeX Gyre Heros fonts.
The original contact icons are included in `src/icons/main`; company logos are
stored alongside `main.tex`.

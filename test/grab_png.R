# grab image with palettes

if(!require(webshot)) {
    library(devtools)
    install_github("wch/webshot")
    library(webshot)
}

webshot("index.html", "palettes.png", selector="div#chart")
system("convert -crop 750x400+0+0 palettes.png ../palettes.png")

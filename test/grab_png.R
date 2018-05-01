# grab image with palettes

if(!require(webshot)) {
    install.packages("webshot")
    library(webshot)
    webshot::install_phantomjs()
}

webshot("index.html", "palettes.png", selector="div#chart")
system("convert -crop 750x400+0+0 palettes.png ../palettes.png")

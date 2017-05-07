# grab palettes from wesanderson R package and make d3 scales
# (https://github.com/karthik/wesanderson)

if(!require(wesanderson)) {
    library(devtools)
    install_github("karthik/wesanderson")
    library(wesanderson)
}

# sort by name
palnames <- sort(names(wes_palettes))

file <- "../wes_scales.js"
cat("// d3 v4 scales for wes anderson palettes\n",
    file=file)

for(pal in palnames) {
    cat("d3.scale", pal, "=function(){return d3.scaleOrdinal().range([",
        paste0('"', wes_palettes[[pal]], '"', collapse=","),
        "]);}\n", sep="", file=file, append=TRUE)
}

# grab palettes from wesanderson R package and make CSS file
# (https://github.com/karthik/wesanderson)

if(!require(wesanderson)) {
    library(devtools)
    install_github("karthik/wesanderson")
    library(wesanderson)
}

# sort by name
palnames <- sort(names(wes_palettes))

##############################
# create wes_palettes.css
##############################
file <- "../wesanderson.css"
cat("// palettes from https://github.com/karthik/wesanderson\n",
    file=file)
for(pal in palnames) {
    val <- col2rgb(wes_palettes[[pal]])
    class_name <- paste0(".", pal, ".q", (1:ncol(val))-1)

    css <- apply(val, 2, function(a)
                 paste0("{fill:rgb(", paste(a, collapse=","), ")}"))
    for(i in seq(along=css))
        cat(class_name[i], css[i], "\n", sep="", file=file, append=TRUE)
}

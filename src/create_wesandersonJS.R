# grab palettes from wesanderson R package and make JS file
# (https://github.com/karthik/wesanderson)

if(!require(wesanderson)) {
    library(devtools)
    install_github("karthik/wesanderson")
    library(wesanderson)
}

# sort by name
palnames <- sort(names(wes_palettes))

file <- "wes_palettes.js"
cat("// palettes from https://github.com/karthik/wesanderson\n",
    file=file)

cat("var wes_palettes = ", file=file, append=TRUE)

cat(RJSONIO::toJSON(wes_palettes[palnames]),
    file=file, append=TRUE)

cat(";\n", file=file, append=TRUE)

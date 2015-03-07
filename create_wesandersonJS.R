# grab palettes from wesanderson R package
# (https://github.com/karthik/wesanderson)

if(!require(wesanderson)) {
    install_github("karthik/wesanderson")
    library(wesanderson)
}

# sort by name
palnames <- sort(names(wes_palettes))

file <- "wesanderson.js"
cat("// palettes from https://github.com/karthik/wesanderson\n",
    file=file)

cat("var wes_palettes = ", file=file, append=TRUE)

cat(RJSONIO::toJSON(wes_palettes[palnames]),
    file=file, append=TRUE)

cat(";\n", file=file, append=TRUE)

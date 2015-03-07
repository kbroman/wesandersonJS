// helper function: call with a palette name and (optionally) some number of colors
var wes_palette = function(palette, n_colors) {
    var palette_names = Object.keys(wes_palettes);
    if(palette_names.indexOf(palette) < 0) {
        console.log("palette " + palette + " not found");
        return(null);
    }
    var pal = wes_palettes[palette];
    if(n_colors == null) {
        return pal;
    }
    if(n_colors == 0) {
        console.log("No colors (n_colors==0)? That's just silly.")
        return pal;
    }
    if(n_colors > pal.length) {
        console.log("palette " + palette + " only has " + pal.length.toString() + " colors");
        return(pal);
    }
    return pal.slice(0,n_colors);
}

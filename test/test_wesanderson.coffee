# visualize the wes anderson palettes

height = 400
width  = 800
indent = 15
textwidth = 125
radius = 15
gap_betw_cols = 30

svg = d3.select("div#chart")
        .append("svg")
        .attr("height", height)
        .attr("width", width)

bgrect = svg.append("rect")
        .attr("x", 2)
        .attr("y", 2)
        .attr("height", height-4)
        .attr("width", width-54)
        .attr("fill", "white")
        .attr("stroke", "black")
        .attr("stroke-width", "3")
        .on("click", (d) ->
            bgrect.attr("fill", "white")
            text.attr("fill", "#333"))

palettes = Object.keys(wes_palettes)

# vscale to make two columns
n_per_col = Math.ceil(palettes.length/2)

# vertical scale (in two columns)
vscaleL = d3.scalePoint()
                  .domain(d3.range(n_per_col))
                  .range([0, height])
                  .padding(1)
vscaleR = d3.scalePoint()
                  .domain(d3.range(n_per_col).map((d) -> d+n_per_col))
                  .range([0, height])
                  .padding(1)
vscale = (d) ->
    return vscaleL(d) if d < n_per_col
    vscaleR(d)

# horizontal offset (in two columns)
hoffset = (d) ->
    return indent if d < n_per_col
    indent + width/2 + gap_betw_cols/2

text = svg.selectAll("empty")
          .data(palettes)
          .enter()
          .append("text")
          .text((d) -> d)
          .attr("x", (d,i) -> hoffset(i))
          .attr("y", (d,i) -> vscale(i))
          .attr("fill", "#333")

max_length = d3.max(palettes.map (pal) -> wes_palettes[pal].length)
hscale = d3.scalePoint()
                 .domain(d3.range(max_length))
                 .range([textwidth, width/2-gap_betw_cols/2])
                 .padding(1)

dark_colors =
    BottleRocket: [4, 5, 6]
    Cavalcanti: [1]
    Darjeeling2: [4]
    GrandBudapest: [2]
    Moonrise1: [3]
    Moonrise2: [3]
    Rushmore: [3]

has_dark = Object.keys(dark_colors)

for index of palettes
    pal = palettes[index]
    svg.append("g")
       .attr("id", pal)
       .selectAll("empty")
       .data(wes_palettes[pal])
       .enter()
       .append("circle")
       .attr("cy", vscale(index))
       .attr("cx", (d,i) -> hoffset(index) + hscale(i))
       .attr("r", radius)
       .attr("fill", (d) -> d)
       .attr("class", (d,i) ->
           return "dark" if has_dark.indexOf(pal) >=0 and dark_colors[pal].indexOf(i) >= 0
           "light")
       .on "click", (d,i) ->
           bgrect.attr("fill", d)
           this_class = d3.select(this).attr("class")
           f = () ->
               return "#ddd" if this_class=="dark"
               "#333"
           text.attr("fill", f)

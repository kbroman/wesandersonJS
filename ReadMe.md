## Wes Anderson palettes for javascript

Color palettes based on Wes Anderson movies, taken from
[Karthik Ram](http://inundata.org/)'s
[wesanderson](https://github.com/karthik/wesanderson) package for R,
the first round of palettes of which were derived from
[the Wes Anderson Palettes Tumblr](http://wesandersonpalettes.tumblr.com).

### Installation

You could grab the files directly from the github repository:
[`wesanderson.js`](https://raw.githubusercontent.com/kbroman/wesandersonJS/master/wesanderson.js)
and
[`wesanderson.css`](https://raw.githubusercontent.com/kbroman/wesandersonJS/master/wesanderson.css).

Or you could clone the git repository:

```
git clone git://github.com/kbroman/wesandersonJS
```

Or, you can use [bower](http://bower.io/):

```
bower install wesanderson
```

You'll then find the `wesanderson.js` file in
`bower_components/wesanderson/wesanderson.js`.

### Usage

[`wesanderson.js`](https://github.com/kbroman/wesandersonJS/master/wesanderson.js)
contains two things:

- `wes_palettes` &ndash; an object indexed by palette name, containing
  arrays of colors. For example, `wes_palettes["Rushmore"]` gives an
  array of 5 colors from the movie
  [Rushmore](http://en.wikipedia.org/wiki/Rushmore_%28film%29).

- `wes_palette` &ndash; a function to be called with a color palette name
  and (optionally) some number of colors. For example,
  `wes_palette("Rushmore", 2)` will give you the first two colors in
  the `Rushmore` palette.

[`wesanderson.css`](https://github.com/kbroman/wesandersonJS/master/wesanderson.css),
is organized like the
[`colorbrewer.css`](https://github.com/mbostock/d3/blob/master/lib/colorbrewer/colorbrewer.css)
file that is distributed with [D3](http://d3js.org). For each palette, it defines a set
of classes like:

```css
.Rushmore.q0{fill:rgb(225,189,109)}
.Rushmore.q1{fill:rgb(234,190,148)}
.Rushmore.q2{fill:rgb(11,119,94)}
.Rushmore.q3{fill:rgb(53,39,74)}
.Rushmore.q4{fill:rgb(242,48,15)}
```

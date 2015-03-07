## Wes Anderson palettes for javascript

Color palettes based on Wes Anderson movies, taken from
[Karthik Ram](http://inundata.org/)'s
[wesanderson](https://github.com/karthik/wesanderson) package for R,
the first round of palettes of which were derived from
[the Wes Anderson Palettes Tumblr](http://wesandersonpalettes.tumblr.com).

### Installation

The easiest thing is to grab the
[wesanderson.js](https://raw.githubusercontent.com/kbroman/wesandersonJS/master/wesanderson.js)
file.

If you use [bower](http://bower.io/), you can use:

```
bower install wesanderson
```

You'll then find the `wesanderson.js` file in
`bower_components/wesanderson/wesanderson.js`.

### Usage

[wesanderson.js](https://raw.githubusercontent.com/kbroman/wesandersonJS/master/wesanderson.js)
contains two things:

- `wes_palettes` &ndash; an object indexed by palette name, containing
  arrays of colors. For example, `wes_palettes["Rushmore"]` gives an
  array of 5 colors from the movie
  [Rushmore](http://en.wikipedia.org/wiki/Rushmore_%28film%29).

- `wes_palette` &ndash; a function to be called with a color palette name
  and (optionally) some number of colors. For example,
  `wes_palette("Rushmore", 2)` will give you the first two colors in
  the `Rushmore` palette.

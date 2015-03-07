wesanderson.js: src/wes_palettes.js src/wes_palette.js
	cat $^ > $@

src/wes_palettes.js: src/create_wesandersonJS.R
	cd $(<D);R CMD BATCH $(<F)

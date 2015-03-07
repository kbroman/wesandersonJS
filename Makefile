wesanderson.js: create_wesandersonJS.R wes_palette.js
	R CMD BATCH $<
	cat wesanderson.js wes_palette.js > tmp.js
	mv tmp.js wesanderson.js

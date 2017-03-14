statements-elements
identifier
	^ (keyword not , ((#letter asPParser / $_ asPParser / #digit asPParser / $$ asPParser / '://' asPParser / $< asPParser / $% asPParser / $# asPParser / $> asPParser / $@ asPParser / $: asPParser) plus flatten trim)) ==>  #second
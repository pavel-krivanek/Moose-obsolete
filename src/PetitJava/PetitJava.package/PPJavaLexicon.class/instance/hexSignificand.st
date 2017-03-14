grammar-literals-floating
hexSignificand 
	|dot|
	dot := $. asPParser.

 ^  (hexNumeral , dot optional) /
    ($0 asPParser , (PP2PredicateObjectNode anyOf: 'xX') , hexDigits optional , dot , hexDigits )
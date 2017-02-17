grammar-literals-floating
decimalFloatingPointLiteral

	|dot|
	dot := $. asPParser.

 ^ ( ( (dot , digits) 
        / 
        (digits , dot , digits optional)) , 
			exponentPart optional , floatTypeSuffix optional ) 
  	/ 
  	(digits , 
		( (exponentPart , floatTypeSuffix optional) 
		  /
		  (exponentPart optional , floatTypeSuffix) ))
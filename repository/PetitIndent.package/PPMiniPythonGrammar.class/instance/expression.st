grammar
expression
	^ 
	(identifier, (exprOperator trimBlanks, expression) star)
	/
	($( asParser, expression trim, $) asParser)
	
	
	==> [ :tokens | #expr ] 
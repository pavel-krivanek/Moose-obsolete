grammar
let
	^ 'let' asParser trim, expressionBlock
	
	==> #second
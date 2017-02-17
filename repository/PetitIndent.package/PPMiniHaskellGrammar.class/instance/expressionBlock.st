grammar
expressionBlock
	^ 
	pushIndent,
		(expression trimAlign, emptyLines ==> #second) plus,
	popIndent
	
	==> #second
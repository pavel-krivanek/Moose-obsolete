grammar
statementBlock
	^ 
	statementBlockStart,
		(statement trimAlign, emptyLines ==> #first) plus,
	statementBlockEnd
	
	==> #second
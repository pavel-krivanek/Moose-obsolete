grammar
start
	^ (statement trimBlanks / ((emptyLine, lineEnd) ==> [:e | #() ])) nonEmpty star
	
	==> [ :e | 
		e deepFlatten
	]
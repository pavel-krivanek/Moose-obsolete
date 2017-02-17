grammar
emptyStatement
	^ ( newline / 
		(comment trimBlanks, newline)
	) ==> [ :e | #() ]
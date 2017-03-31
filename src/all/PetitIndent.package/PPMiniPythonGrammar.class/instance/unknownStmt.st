grammar
unknownStmt
	^ blank not, 
		(	brackets /
			comment /
			multilineComment /
			string /
			lineContinues /
			newline asParser negate) 
		star nonEmpty flatten ==> [ :e | #() ]
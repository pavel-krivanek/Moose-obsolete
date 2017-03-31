grammar
assignmentStmt
	^ identifier, $= asParser trimBlanks, expression ==> [ :e | #() ]
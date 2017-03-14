tests
testTableConstraintCheckPart 
	super testTableConstraintCheckPart.
	
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self assert: (result isCheck).  
	self deny: (result expressionString isNil).
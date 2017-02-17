testing-parsers
testRemoveParser
	self performRefactoring: (PPRemoveParserRefactoring onClass: PPArithmeticParser).
	self assert: self changes size equals: 1.
	self assert: self changes first class equals: RBRemoveClassChange.
	self assert: self changes first changeClassName equals: 'PPArithmeticParser'
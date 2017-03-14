testing - class history
testViewSimpleEvolutionMatrix2
	| view |
	view := RTMondrian new.
	self assert: view view numberOfElements equals: 0.
	self shouldnt: [ testData simpleHistory viewSimpleEvolutionMatrixIn: view ] raise: Error.
	self assert: view view numberOfElements > 0
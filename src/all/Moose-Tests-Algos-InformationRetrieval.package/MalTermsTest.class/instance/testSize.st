running
testSize
	terms := MalTerms sample.
	self assert: terms size equals: 76.
	^ terms
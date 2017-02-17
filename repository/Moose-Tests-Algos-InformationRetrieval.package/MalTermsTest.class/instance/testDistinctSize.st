running
testDistinctSize
	terms := MalTerms sample.
	self assert: terms distinctSize equals: 56.
	^ terms
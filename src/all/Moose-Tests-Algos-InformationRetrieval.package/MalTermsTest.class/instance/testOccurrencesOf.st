running
testOccurrencesOf
	terms := MalTerms sample.
	self assert: (terms occurrencesOf: 'tree') equals: 5.
	self assert: (terms occurrencesOf: 'a') equals: 6.
	self assert: (terms occurrencesOf: 'connectivity') equals: 1.
	self assert: (terms occurrencesOf: 'the') equals: 2.
	self assert: (terms occurrencesOf: 'graph') equals: 1.
	^ terms
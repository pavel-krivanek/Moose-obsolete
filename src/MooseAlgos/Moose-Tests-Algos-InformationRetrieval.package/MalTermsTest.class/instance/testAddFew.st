running
testAddFew
	terms := MalTerms fromString: 'and the super of a'.
	self assert: terms size equals: 5.
	self assert: terms distinctSize equals: 5.
	^ terms
running
testAddMany
	terms := MalTerms fromString: 'and the super of the a of the a'.
	self assert: terms size equals: 9.
	self assert: terms distinctSize equals: 5.
	^ terms
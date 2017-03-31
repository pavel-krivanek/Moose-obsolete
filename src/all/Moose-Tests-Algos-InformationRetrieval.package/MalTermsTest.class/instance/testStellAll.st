running
testStellAll
	terms := MalTerms sample.
	self assert: terms distinctSize equals: 56.
	self assert: terms size equals: 76.
	terms stemAll.
	self assert: terms distinctSize equals: 55.
	self assert: terms size equals: 76.
	^ terms
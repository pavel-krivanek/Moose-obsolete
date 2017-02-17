running
testRemoveStopwords
	terms := MalTerms sample.
	self assert: terms distinctSize equals: 56.
	terms removeStopwords.
	self assert: terms distinctSize equals: 24.
	^ terms
running
testPrune
	
	terms := MalTerms sample.
	self assert: 56 equals: terms distinctSize.
	self assert: 76 equals: terms size.
	terms prune.
	self assert: 4 equals: terms distinctSize.
	self assert: 11 equals: terms size.
	^terms
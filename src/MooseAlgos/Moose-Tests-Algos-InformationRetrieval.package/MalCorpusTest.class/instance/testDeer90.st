running
testDeer90
	| deer |
	deer := MalCorpus deer90.
	self assert: deer documents size equals: 9.
	self assert: deer terms distinctSize equals: 42.
	^ deer
running
testRemoveStopwords
	| deer |
	deer := self testDeer90.
	self assert: (deer terms includes: 'the').
	deer removeStopwords.
	self assert: (deer terms includes: 'the') not.
	self assert: deer documents size equals: 9.
	self assert: deer terms distinctSize equals: 34.
	^ deer
running
testStemDeer90
	| deer |
	deer := self testDeer90.
	self assert: (deer terms includes: 'trees').
	self assert: (deer terms includes: 'tree') not.
	deer stemAll.
	self assert: (deer terms includes: 'trees') not.
	self assert: (deer terms includes: 'tree').
	self assert: deer documents size equals: 9.
	self assert: deer terms distinctSize equals: 42.
	^ deer
tests
testDefault
	self assert: slider min equals: 0.
	self assert: slider max equals: 1.
	self assert: slider value equals: 0.5
tests
testEmptyRtElement
	rt := element rtElement.
	self assert: rt class equals: RTElement.
	self assert: rt shape class equals: RTBox
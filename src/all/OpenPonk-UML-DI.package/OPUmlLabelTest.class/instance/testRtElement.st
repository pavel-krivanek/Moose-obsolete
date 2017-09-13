tests
testRtElement
	element text: 'some text'.
	rt := element rtElement.
	self assert: rt class equals: RTElement.
	self assert: rt shape class equals: RTStyledLabel.
	self assert: (rt shape textFor: rt) equals: 'some text'
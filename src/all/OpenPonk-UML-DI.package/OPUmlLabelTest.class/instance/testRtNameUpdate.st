tests
testRtNameUpdate
	element text: 'some text'.
	rt := element rtElement.
	self assert: (rt shape textFor: rt) equals: 'some text'.
	element text: 'new text'.
	self assert: (rt shape textFor: rt) equals: 'new text'
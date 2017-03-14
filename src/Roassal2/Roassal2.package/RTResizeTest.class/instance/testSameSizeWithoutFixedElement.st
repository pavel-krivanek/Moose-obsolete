tests
testSameSizeWithoutFixedElement
	resize sameSize.
	self assert: (elements collect: #extent) asSet asArray equals: (Array with: (4.0 @ 3.0))
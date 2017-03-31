tests
testSameSize
	resize fixedElement: elements second.
	resize sameSize.
	self assert: (elements collect: #extent) asSet asArray equals: (Array with: (3.0@2.0))
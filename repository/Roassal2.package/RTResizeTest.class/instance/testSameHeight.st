tests
testSameHeight
	resize fixedElement: elements second.
	resize sameHeight.
	self assert: (elements collect: #extent) sorted asArray equals: (Array with: (2.0@2.0) with: (3.0@2.0) with: (4.0@2.0))
tests
testSameWidth
	resize fixedElement: elements second.
	resize sameWidth.
	self assert: (elements collect: #extent) sorted asArray equals: (Array with: (3.0@1.0) with:(3.0@2.0) with: (3.0@3.0))
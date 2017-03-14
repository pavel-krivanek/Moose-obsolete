tests
testBiggestElement
	self assert: resize biggestElement equals: elements last.
	resize useBiggestElement.
	self assert: resize fixedElement equals: elements last.
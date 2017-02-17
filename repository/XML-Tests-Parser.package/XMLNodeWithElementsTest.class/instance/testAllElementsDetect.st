tests
testAllElementsDetect
	| nodeWithElements allElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	detectedElement := nodeWithElements allElementsDetect: [:each | each isNamed: 'prefix:four'].
	self
		assert: detectedElement notNil;
		assert: (detectedElement isNamed: 'prefix:four');
		assert: detectedElement = (allElements detect: [:each | each isNamed: 'prefix:four']);
		assert: (nodeWithElements allElementsDetect: [:each | each isNamed: 'absent']) isNil.
tests
testDescendantElementsDetect
	| nodeWithElements descendantElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	detectedElement := nodeWithElements descendantElementsDetect: [:each | each isNamed: 'prefix:four'].
	self
		assert: detectedElement notNil;
		assert: (detectedElement isNamed: 'prefix:four');
		assert: detectedElement = (descendantElements detect: [:each | each isNamed: 'prefix:four']);
		assert: (detectedElement descendantElementsDetect: [:each | each isNamed: 'prefix:four']) isNil.
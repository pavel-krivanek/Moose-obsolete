tests
testDescendantElementsDetectIfNone
	| nodeWithElements descendantElements detectedElement |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	detectedElement :=
		nodeWithElements
			descendantElementsDetect: [:each | each isNamed: 'prefix:four']
			ifNone: [self fail].
	self assert: (detectedElement isNamed: 'prefix:four').
	self assert:	
		detectedElement =
			(descendantElements detect: [:each | each isNamed: 'prefix:four']).
	self assert:
		(detectedElement
			descendantElementsDetect: [:each | each isNamed: 'prefix:four']
			ifNone: [#absent]) = #absent.
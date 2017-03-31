tests
testDescendantElementsNamed
	| nodeWithElements descendantElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self assert: (nodeWithElements descendantElementsNamed: 'absent') isEmpty.

	descendantElements := nodeWithElements descendantElements.
	namedElements := nodeWithElements descendantElementsNamed: 'four'. 
	self assert: namedElements size = 3.
	self
		assertList: namedElements
		selects: (descendantElements select: [:each | each isNamed: 'four']).

	namedElements do: [:each |
		self assert: (each descendantElementsNamed: 'four') isEmpty]
tests
testStringNodes
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: nodeWithElements stringNodes
		selects: (nodeWithElements nodes select: [:each | each isStringNode]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: element stringNodes
			selects: (element nodes select: [:each | each isStringNode])].
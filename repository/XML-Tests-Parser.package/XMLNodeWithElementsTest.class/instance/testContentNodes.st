tests
testContentNodes
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: nodeWithElements contentNodes
		selects: (nodeWithElements nodes select: [:each | each isContentNode]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: element contentNodes
			selects: (element nodes select: [:each | each isContentNode])].
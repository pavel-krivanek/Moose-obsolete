tests
testElementsCollect
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: (nodeWithElements elementsCollect: [:each | each name])
		collects: (nodeWithElements elements collect: [:each | each name]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: (element elementsCollect: [:each | each name])
			collects: (element elements collect: [:each | each name])].
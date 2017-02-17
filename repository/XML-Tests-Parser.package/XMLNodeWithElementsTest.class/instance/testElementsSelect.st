tests
testElementsSelect
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: (nodeWithElements elementsSelect: [:each | each hasChildren])
		selects: (nodeWithElements elements select: [:each | each hasChildren]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: (element elementsSelect: [:each | each hasChildren])
			selects: (element elements select: [:each | each hasChildren])].
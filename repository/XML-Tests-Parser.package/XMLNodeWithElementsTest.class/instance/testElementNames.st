tests
testElementNames
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: nodeWithElements elementNames
		collects: (nodeWithElements elements collect: [:each | each name]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: element elementNames
			collects: (element elements collect: [:each | each name])].
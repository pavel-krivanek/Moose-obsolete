tests
testAllElementsCollect
	| nodeWithElements allElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	self
		assertList: (nodeWithElements allElementsCollect: [:each | each identityHash])
		collects: (allElements collect: [:each | each identityHash]).

	allElements do: [:node |
		self
			assertList: (node allElementsCollect: [:each | each identityHash])
			collects: (node allElements collect: [:each | each identityHash])].
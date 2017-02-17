tests
testDescendantElementsCollect
	| nodeWithElements descendantElements |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	self
		assertList: (nodeWithElements descendantElementsCollect: [:each | each identityHash])
		collects: (descendantElements collect: [:each | each identityHash]).

	descendantElements do: [:node |
		self
			assertList: (node descendantElementsCollect: [:each | each identityHash])
			collects: (node descendantElements collect: [:each | each identityHash])].
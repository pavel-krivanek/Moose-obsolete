tests
testDescendantElementsSelect
	| nodeWithElements descendantElements |

	nodeWithElements := self newNodeWithElements.
	descendantElements := nodeWithElements descendantElements.
	self
		assertList: (nodeWithElements descendantElementsSelect: [:each | each hasChildren])
		selects: (descendantElements select: [:each | each hasChildren]).

	descendantElements do: [:node |
		self
			assertList: (node descendantElementsSelect: [:each | each hasChildren])
			selects: (node descendantElements select: [:each | each hasChildren])].
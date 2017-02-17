tests
testStrings
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		assertList: nodeWithElements strings
		collects: (nodeWithElements stringNodes collect: [:each | each string]).
	nodeWithElements allElementsDo: [:element |
		self
			assertList: element strings
			collects: (element stringNodes collect: [:each | each string]).].
*XML-Parser-GTExtensions
addTreeViewChildrenTo: anOrderedCollection
	self nodesDo: [:each |
		(each isStringNode
			and: [each isEmpty
				or: [each isWhitespace]])
			ifFalse: [anOrderedCollection addLast: each]]
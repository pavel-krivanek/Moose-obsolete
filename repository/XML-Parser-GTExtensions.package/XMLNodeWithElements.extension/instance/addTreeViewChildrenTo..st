*XML-Parser-GTExtensions
addTreeViewChildrenTo: aSequenceableCollection
	self nodesDo: [:each |
		(each isStringNode
			and: [each isEmpty
				or: [each isWhitespace]])
			ifFalse: [aSequenceableCollection addLast: each]]
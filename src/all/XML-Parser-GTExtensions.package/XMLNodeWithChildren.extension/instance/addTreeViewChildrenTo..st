*XML-Parser-GTExtensions
addTreeViewChildrenTo: anOrderedCollection
	self nodesDo: [:each |
		anOrderedCollection addLast: each]
*XML-Parser-GTExtensions
addTreeViewChildrenTo: anOrderedCollection
	self hasDoctypeDeclaration
		ifTrue: [anOrderedCollection addLast: self doctypeDeclaration].
	super addTreeViewChildrenTo: anOrderedCollection.
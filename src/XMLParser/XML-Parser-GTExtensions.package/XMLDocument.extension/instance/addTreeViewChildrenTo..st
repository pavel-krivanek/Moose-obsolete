*XML-Parser-GTExtensions
addTreeViewChildrenTo: aSequenceableCollection
	self hasDoctypeDeclaration
		ifTrue: [aSequenceableCollection addLast: self doctypeDeclaration].
	super addTreeViewChildrenTo: aSequenceableCollection.
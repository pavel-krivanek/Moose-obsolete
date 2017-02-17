*XML-Parser-GTExtensions
treeViewChildren
	self requiresTreeView
		ifTrue: [| treeViewChildren |
			treeViewChildren := OrderedCollection new: self nodes size.
			self addTreeViewChildrenTo: treeViewChildren.
			^ treeViewChildren]
		ifFalse: [^ #()]
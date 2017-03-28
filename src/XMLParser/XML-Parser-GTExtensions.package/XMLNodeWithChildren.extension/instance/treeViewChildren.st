*XML-Parser-GTExtensions
treeViewChildren
	self supportsTreeView
		ifTrue: [| treeViewChildren |
			treeViewChildren := OrderedCollection new: self nodes size.
			self addTreeViewChildrenTo: treeViewChildren.
			^ treeViewChildren]
		ifFalse: [^ #()]
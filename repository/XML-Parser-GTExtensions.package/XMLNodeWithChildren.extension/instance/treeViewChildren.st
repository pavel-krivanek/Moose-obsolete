*XML-Parser-GTExtensions
treeViewChildren
	self hasChildren
		ifTrue: [^ self nodes]
		ifFalse: [^ #()]
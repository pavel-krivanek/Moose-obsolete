enumerating
hasDescendant: aNode
	self descendantsDo: [:each | each = aNode ifTrue: [^true]].
	^false
enumerating
allDescendants: aNode
	|myDescendants|
	myDescendants := OrderedCollection new.
	self descendantsDo: [:each | (each = aNode) ifFalse: [myDescendants add: each]].
	^myDescendants
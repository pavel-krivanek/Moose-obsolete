accessing
addDescendant: aNode
	descendants ifNil: [ descendants := OrderedCollection new ].
	descendants add: aNode.
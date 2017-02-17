notifying
addedNode: aNode
	super addedNode: aNode.
	aNode isElement
		ifTrue: [
			aNode configuration: self configuration.
			self addedElement: aNode].
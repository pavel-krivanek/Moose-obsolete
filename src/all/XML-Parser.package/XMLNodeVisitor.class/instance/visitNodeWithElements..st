visiting
visitNodeWithElements: aNodeWithElements
	aNodeWithElements hasChildren
		ifTrue: [
			aNodeWithElements nodesDo: [:each |
				each acceptNodeVisitor: self]].
	^ aNodeWithElements.
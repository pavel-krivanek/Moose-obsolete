testing
includes: aNode
	^ aNode isAttribute
		and: [
			(self attributeNodesByName
				at: aNode name
				ifAbsent: [^ false]) = aNode]
accessing-attributes
attributeNodeAt: aString ifAbsent: aBlock
	"Answer the attribute node by name, if the node does not exist evaluate aBlock."
	
	^ self attributes
		detect: [ :each | each name localName = aString ]
		ifNone: aBlock
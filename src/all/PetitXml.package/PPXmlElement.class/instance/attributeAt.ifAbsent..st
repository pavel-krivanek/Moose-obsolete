accessing-attributes
attributeAt: aString ifAbsent: aBlock
	"Answer the attribute value by name, if the node does not exist evaluate aBlock."
	
	^ (self attributeNodeAt: aString ifAbsent: [ ^ aBlock value ]) value
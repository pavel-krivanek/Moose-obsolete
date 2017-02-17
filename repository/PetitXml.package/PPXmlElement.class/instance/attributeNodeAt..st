accessing-attributes
attributeNodeAt: aString
	"Answer the attribute node by name, if the node does not exist answer nil."
	
	^ self attributeNodeAt: aString ifAbsent: [ nil ]
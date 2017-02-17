accessing-attributes
attributeAt: aString
	"Answer the attribute value by name, if the node does not exist answer nil."
	
	^ self attributeAt: aString ifAbsent: [ nil ]
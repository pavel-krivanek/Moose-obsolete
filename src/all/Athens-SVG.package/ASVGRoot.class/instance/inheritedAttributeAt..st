attribute management
inheritedAttributeAt: name
	"i am root, nobody to inherit from"
	^ attributes at: name ifAbsent: nil
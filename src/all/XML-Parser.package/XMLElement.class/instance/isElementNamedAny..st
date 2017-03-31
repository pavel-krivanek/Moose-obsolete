testing
isElementNamedAny: aNameCollection
	"returns true if the receiver's qualified name or local name matches any
	name in aNameCollection"

	^ self isNamedAny: aNameCollection
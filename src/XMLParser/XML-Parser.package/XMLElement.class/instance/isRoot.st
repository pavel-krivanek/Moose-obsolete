testing
isRoot
	"Is the receiver the root element of a DOM tree?"

	^ (self hasParent and: [self parent isElement]) not
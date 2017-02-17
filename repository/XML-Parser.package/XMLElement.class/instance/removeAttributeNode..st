removing
removeAttributeNode: aNode
	"Removes and returns the attribute node aNode or raises an error if
	it's absent."

	^ self attributeNodes remove: aNode
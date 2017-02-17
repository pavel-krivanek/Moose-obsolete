removing
removeAttributeNode: aNode ifAbsent: aBlock
	"Removes and returns the attribute node aNode or returns the value
	of aBlock if it's absent."

	^ self attributeNodes
		remove: aNode
		ifAbsent: aBlock
accessing
nodeBefore: aNode
	"returns the first child node of the receiver before aNode or nil if there
	isn't one"

	^ self nodes before: aNode
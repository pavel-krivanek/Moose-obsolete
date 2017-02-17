accessing
nodeAfter: aNode
	"returns the first child node of the receiver after aNode or nil if there
	isn't one"

	^ self nodes after: aNode
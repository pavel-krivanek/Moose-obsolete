enumerating
descendantNodesDetect: aBlock
	"returns the first descendant node of the receiver that aBlock evaluates
	true for or nil if there isn't one"

	^ self
		descendantNodesDetect: aBlock
		ifNone: [nil]
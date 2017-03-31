testing
hasElements
	"returns true if the receiver has element children"

	"optimized with a nil test to avoid lazy initializing nodes"
	nodes == nil
		ifTrue: [^ false].
	^ nodes hasElements.
testing
hasChildren
	"optimized with nil test and size check to avoid lazy initializing"
	nodes == nil
		ifTrue: [^ false].
	^ nodes size > 0.
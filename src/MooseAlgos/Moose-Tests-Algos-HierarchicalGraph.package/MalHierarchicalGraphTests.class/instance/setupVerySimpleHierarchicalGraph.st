setup
setupVerySimpleHierarchicalGraph
	| hg |
	hg := MalHierarchicalGraph with: 'aBaseEntity'.
	self assert: hg nodes size equals: 1
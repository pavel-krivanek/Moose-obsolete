tests
testSingleNodeHiGraph
	| hg |
	hg := MalHierarchicalGraph with: (OrderedCollection with: 'someBaseEntity').
	self assert: hg nodes size equals: 1
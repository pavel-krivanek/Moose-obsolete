tests
testBaseEntity
	| hg |
	hg := MalHierarchicalGraph with: (OrderedCollection with: 2).
	self assert: hg nodes notEmpty.
	self assert: hg nodes size equals: 1.
	self assert: hg nodes first model equals: 2
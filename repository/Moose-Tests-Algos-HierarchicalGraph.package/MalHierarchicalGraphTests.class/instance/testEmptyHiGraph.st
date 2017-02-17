tests
testEmptyHiGraph
	| hg |
	hg := MalHierarchicalGraph with: OrderedCollection new.
	self assert: hg nodes isEmpty.
	self assert: hg rootNodes isEmpty.
	self assert: hg edges isEmpty.
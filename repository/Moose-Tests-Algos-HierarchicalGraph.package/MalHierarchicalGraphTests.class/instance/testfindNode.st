tests
testfindNode
	| hg |
	hg := MalHierarchicalGraph with: self setupSimpleTopDownModel.
	hg topDown: {(MalHgTestModelSimple -> #children)}.
	self assert: hg rootNodes size equals: 1.
	self assert: (hg findNode: hg rootNodes anyOne model) equals: hg rootNodes anyOne
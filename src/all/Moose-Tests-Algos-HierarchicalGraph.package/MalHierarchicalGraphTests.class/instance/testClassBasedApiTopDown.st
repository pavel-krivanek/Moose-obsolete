tests
testClassBasedApiTopDown
	| hg |
	hg := MalHierarchicalGraph with: self setupSimpleTopDownModel.
	hg topDown: {(MalHgTestModelSimple -> #children)}.
	self assert: hg nodes size equals: 121.
	self assert: hg rootNodes size equals: 1.
	self assert: hg rootNodes anyOne level equals: 0.
	self assert: hg rootNodes anyOne children size equals: 3.
	self assert: hg rootNodes anyOne children anyOne level equals: 1.
	self assert: hg rootNodes anyOne children anyOne children size equals: 3.
	self assert: hg rootNodes anyOne children anyOne children anyOne level equals: 2.
	self assert: hg rootNodes anyOne children anyOne children anyOne children size equals: 3.
	self assert: hg rootNodes anyOne children anyOne children anyOne children anyOne level equals: 3.
	self assert: hg rootNodes anyOne children anyOne children anyOne children anyOne children size equals: 3.
	self assert: hg rootNodes anyOne children anyOne children anyOne children anyOne children anyOne level equals: 4.
	self assert: hg rootNodes anyOne children anyOne children anyOne children anyOne children anyOne isLeafNode	"QsVisualizer show: hg withWeightBlock: [ :e | e entity ]."
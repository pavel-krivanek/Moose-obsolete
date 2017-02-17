tests
testClassBasedBlockApiBottomUp
	| hg |
	hg := MalHierarchicalGraph with: self setupSimpleBottomUpModel.
	hg bottomUp: {(MalHgTestModelSimple -> [ :e | e parent ])}.
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
	self assert: hg rootNodes anyOne children anyOne children anyOne children anyOne children anyOne isLeafNode	"vis := QsVisualizer with: hg weightBlock: [ :e | e entity ].
	vis averageNodeSize: 100.
	vis relativeNodeSizeExtrema: 0.05@1.5.
	vis edgeThicknessRange: 0@10.
	vis layout: QsLayout.	
	vis showSplitOn: 2."
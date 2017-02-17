tests
testBottomUpDeepGraphBuilding
	| hg rootNodes leafNodes |
	
	rootNodes := OrderedCollection new.
	leafNodes := OrderedCollection new.
	
	rootNodes add: 'a'; add: 'b'; add: 'c'.
	rootNodes do: [ :model | self recursiveStringFactory: model in: leafNodes to: 7 ].

	hg := MalHierarchicalGraph with: leafNodes.
	
	hg aggregation:  [ :model |  
		(model size > 1) 
		ifTrue: [ model truncateTo: (model size - 1). ]
		ifFalse: [ nil ].
	].
	
	self assert: (hg rootNodes size = 3) description: 'Should be exactly 3 root nodes in this graph'.
	self assert: (hg nodes size = 3279) description: 'Should be exactly 3279 nodes in total in this graph'.
	self assert: (hg rootNodes anyOne children size = 3) description: 'Any rootNode should have exactly 3 children'.
	self assert: ((hg nodesFor: (Set with: 'aa')) anyOne parent model = 'a') description: 'Parent of aa should be a'.
	self assert: ((hg nodesFor: (Set with: 'ca')) anyOne parent model = 'c') description: 'Parent of ca should be c'.
	self assert: ((hg nodesFor: (Set with: 'aca')) anyOne parent model = 'ac') description: 'Parent of ac should be aca'.
	self assert: ((hg nodesFor: (Set with: 'aaaaaa')) anyOne parent model = 'aaaaa') description: 'Parent of aaaaaa should be aaaaa'.
	self assert: ((hg nodesFor: (Set with: 'abacac')) anyOne parent model = 'abaca') description: 'Parent of abacac should be abaca'.
	self assert: ((hg nodesFor: (Set with: 'caabc')) anyOne parent model = 'caab') description: 'Parent of caabc should be caab'.
	self assert: ((hg nodesFor: (Set with: 'aaaaaaa')) anyOne isLeafNode) description: 'Node aaaaaaa should be a leaf node'.
	self assert: ((hg nodesFor: (Set with: 'aaaaaaa')) anyOne level = 6) description: 'Node aaaaaaa should be on level 6'.
	self assert: ((hg nodesFor: (Set with: 'c')) anyOne level = 0) description: 'Node c should be on level 0'.
	self assert: ((hg nodesFor: (Set with: 'c')) anyOne isRootNode) description: 'Node c should be a root node'.
	self assert: ((hg nodesFor: (Set with: 'bc')) anyOne level = 1) description: 'Node bc should be on level 1'.
	self assert: ((hg nodesFor: (Set with: 'acb')) anyOne level = 2) description: 'Node acb should be on level 2'.
	self assert: ((hg nodesFor: (Set with: 'caba')) anyOne level = 3) description: 'Node caba should be on level 3'.
	self assert: ((hg nodesFor: (Set with: 'bccab')) anyOne level = 4) description: 'Node bccab should be on level 4'.
	self assert: ((hg nodesFor: (Set with: 'bcabca')) anyOne level = 5) description: 'Node bcabca should be on level 5'.
	self assert: ((hg nodesFor: (Set with: 'caabccc')) anyOne level = 6) description: 'Node caabccc should be on level 6'.
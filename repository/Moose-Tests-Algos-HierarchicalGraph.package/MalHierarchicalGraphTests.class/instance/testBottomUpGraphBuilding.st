tests
testBottomUpGraphBuilding
	| hg rootNodes otherNodes |
	
	rootNodes := OrderedCollection new.
	otherNodes := OrderedCollection new.
	
	rootNodes add: 1; add: 2; add:3.
	otherNodes add: 11; add: 12; add: 13; add: 21; add:22; add: 23; add: 31; add: 32; add: 33.
	
	hg := MalHierarchicalGraph with: otherNodes.

	hg blockToGetParent: [ :n |  
		(n / 10 < 1) ifTrue: [ nil ] ifFalse: [(n / (10 raisedTo: (n floorLog: 10))) floor asInteger. ]
	].
	
	self assert: (hg rootNodes size = 3) description: 'Should be exactly 3 root nodes in this graph'.
	self assert: (hg nodes size = 12) description: 'Should be exactly 12 nodes in total in this graph'.
	self assert: (hg rootNodes anyOne children size = 3) description: 'Any rootNode should have exactly 3 children'.
	self assert: ((hg nodesFor: (Set with: 11)) anyOne parent model = 1) description: 'Parent of 11 should be 1'.
	self assert: ((hg nodesFor: (Set with: 12)) anyOne parent model = 1) description: 'Parent of 12 should be 1'.
	self assert: ((hg nodesFor: (Set with: 13)) anyOne parent model = 1) description: 'Parent of 13 should be 1'.
	self assert: ((hg nodesFor: (Set with: 21)) anyOne parent model = 2) description: 'Parent of 13 should be 2'.
	self assert: ((hg nodesFor: (Set with: 22)) anyOne parent model = 2) description: 'Parent of 13 should be 2'.
	self assert: ((hg nodesFor: (Set with: 23)) anyOne parent model = 2) description: 'Parent of 13 should be 2'.
	self assert: ((hg nodesFor: (Set with: 31)) anyOne parent model = 3) description: 'Parent of 13 should be 3'.
	self assert: ((hg nodesFor: (Set with: 32)) anyOne parent model = 3) description: 'Parent of 13 should be 3'.
	self assert: ((hg nodesFor: (Set with: 33)) anyOne parent model = 3) description: 'Parent of 13 should be 3'.

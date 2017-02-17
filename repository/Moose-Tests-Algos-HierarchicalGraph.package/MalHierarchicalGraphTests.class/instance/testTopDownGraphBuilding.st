tests
testTopDownGraphBuilding
	| hg rootNodes |
	
	rootNodes := OrderedCollection new.
	
	rootNodes add: 1; add: 2; add:3.
	
	hg := MalHierarchicalGraph with: rootNodes.

	hg topDown: [ :n |  
		(n = 1 or: (n = 2 or: n = 3)) 
		ifTrue: [
			| result |
			result := Set new.
			result add: ((n asString , '1') asInteger).
			result add: ((n asString , '2') asInteger).
			result add: ((n asString , '3') asInteger).
			result.
		]
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

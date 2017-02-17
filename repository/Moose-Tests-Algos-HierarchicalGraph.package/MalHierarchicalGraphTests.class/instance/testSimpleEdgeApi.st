tests
testSimpleEdgeApi
	| hg rootNodes edges |
	rootNodes := OrderedCollection new.
	rootNodes
		add: 'a';
		add: 'b';
		add: 'c'.
	hg := MalHierarchicalGraph with: rootNodes.
	hg
		topDown: [ :entity | 
			entity size < 6
				ifTrue: [ 
					| result |
					result := Set new.
					result add: entity , 'a'.
					result add: entity , 'b'.
					result add: entity , 'c'.
					result ] ].
	edges := OrderedCollection new.
	edges add: 'ab' -> 'ba'.
	edges add: 'ab' -> 'bb'.
	edges add: 'a' -> 'b'.
	edges add: 'a' -> 'c'.
	edges add: 'a' -> 'ab'.
	hg addEdges: edges from: #key to: #value.
	self assert: (hg nodeWrapping: 'a') outgoing size equals: 3.
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'ba') outgoing isEmpty.
	self assert: (hg nodeWrapping: 'ba') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'b') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'c') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'ab') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'cb') incoming isEmpty
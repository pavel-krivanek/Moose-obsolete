tests
testSimpleEdgeApiWithModel
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
	edges add: (MalHgTestEdge from: 'ab' to: 'ba').
	edges add: (MalHgTestEdge from: 'ab' to: 'bb').
	edges add: (MalHgTestEdge from: 'a' to: 'b').
	edges add: (MalHgTestEdge from: 'a' to: 'c').
	edges add: (MalHgTestEdge from: 'a' to: 'ab').
	hg addEdges: edges from: {(MalHgTestEdge -> #from)} to: {(MalHgTestEdge -> #to)}.
	self assert: (hg nodeWrapping: 'a') outgoing size equals: 3.
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'ba') outgoing isEmpty.
	self assert: (hg nodeWrapping: 'ba') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'b') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'c') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'ab') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'cb') incoming isEmpty.
	hg resetEdges.
	hg addEdges: edges from: {(MalHgTestEdge -> [ :e | e from ])} to: {(MalHgTestEdge -> [ :e | e to ])}.
	self assert: (hg nodeWrapping: 'a') outgoing size equals: 3.
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'ba') outgoing isEmpty.
	self assert: (hg nodeWrapping: 'ba') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'b') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'c') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'ab') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'cb') incoming isEmpty.
	hg resetEdges.	"This is not elegant, but it has to work anyway."
	hg
		addEdges: edges
		from:
			{(MalHgTestEdge -> #from).
			(MalHgTestEdge -> #from)}
		to:
			{(MalHgTestEdge -> #to).
			(MalHgTestEdge -> #to)}.
	self assert: (hg nodeWrapping: 'a') outgoing size equals: 3.
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'ba') outgoing isEmpty.
	self assert: (hg nodeWrapping: 'ba') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'b') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'c') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'ab') incoming size equals: 1.
	self assert: (hg nodeWrapping: 'cb') incoming isEmpty
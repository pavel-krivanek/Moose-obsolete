tests
testfindEdge
	| hg rootNodes edges hierarchy |
	
	"leafs := #(1 2 3 4 5)."
	rootNodes := #(6 7).
	
	hg := MalHierarchicalGraph with: rootNodes.
	
	edges := OrderedCollection new.
	edges 
		add: (1 -> 2);
		add: (1 -> 3);
		add: (3 -> 4);
		add: (2 -> 5).
		
	hierarchy := Dictionary new.
	hierarchy 
		at: 6 put: #(1 2 3);
		at: 7 put: #(4 5).
	
	hg topDown: [ :m |
		hierarchy at: m ifAbsent: [ nil ].
	].
	
	hg addEdges: edges 
		from:  [:e | e key]
		to: [:e | e value].

	hg propagateEdges.
	
	self assert: (hg edges contains: [ :e | e = (hg findEdge: (1 -> 2)) ]).


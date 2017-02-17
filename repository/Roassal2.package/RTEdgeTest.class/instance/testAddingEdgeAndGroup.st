tests
testAddingEdgeAndGroup

	| v g |
	v := RTView new.
	g := RTGroup new.
	
	g
		add: el1;
		add: el2;
		add: edge.
	v addAll: g.
	v setUpCanvas.
	self assert: edge trachelShape notNil.
	self assert: edge trachelShape color notNil.
	self assert: el1 view equals: v.
	self assert: el2 view equals: v.
	self assert: edge view equals: v.
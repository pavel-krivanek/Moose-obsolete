tests
testBasic

	| v |
	v := RTView new.
	v
		add: el1;
		add: el2;
		add: edge;
		setUpCanvas.
	self assert: edge trachelShape notNil.
	self assert: edge trachelShape color notNil.
	self assert: el1 view equals: v.
	self assert: el2 view equals: v.
	self assert: edge view equals: v.
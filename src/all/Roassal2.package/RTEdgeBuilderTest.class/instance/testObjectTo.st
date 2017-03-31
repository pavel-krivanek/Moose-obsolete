tests
testObjectTo
	| e |
	b view: view.
	b objects: #(1 2); connectTo: [ :v | v - 1 ].
	
	self assert: view numberOfEdges equals: 1.
	
	e := view edges anyOne.
	self assert: e from model equals: 2.
	self assert: e to model equals: 1.
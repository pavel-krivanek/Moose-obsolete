tests
testElementsFromModel

	| g g2 g3 |
	g := RTGroup new.
	g add: (RTBox elementOn: 1).
	g add: (RTBox elementOn: 2).
	g add: (RTBox elementOn: 1).

	g2 := g elementsFromModel: 1.
	g3 := g elementsFromModel: 2.
	self assert: g2 size equals: 2.
	self assert: (g2 allSatisfy: [ :e | e model = 1 ]).
	
	self assert: g3 size equals: 1.
	self assert: (g3 allSatisfy: [ :e | e model = 2 ]).
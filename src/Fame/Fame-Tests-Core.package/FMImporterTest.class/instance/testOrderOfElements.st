running
testOrderOfElements
	| elem values |
	self testSimpleExtensions.
	tower model importString: '((EG.Container (children (ref: 1) (ref: 4) (ref: 2) (ref: 3)))
		(EG.Leaf (id: 1) (name ''A'')) (EG.Leaf (id: 2) (name ''B'')) (EG.Leaf (id: 3) (name ''C'')) (EG.Leaf (id: 4) (name ''D'')))'.
	tower model elements size should = 5.
	(tower model selectKindOf: (tower metamodel elementNamed: 'EG.Container')) size should = 1.
	(tower model selectKindOf: (tower metamodel elementNamed: 'EG.Leaf')) size should = 4.
	elem := (tower model selectKindOf: (tower metamodel elementNamed: 'EG.Container')) anyOne.
	values := elem at: (tower metamodel elementNamed: 'EG.Container.children').
	values size should = 4
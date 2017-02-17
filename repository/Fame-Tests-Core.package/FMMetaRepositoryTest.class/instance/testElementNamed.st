running
testElementNamed
	| tower m2 |
	tower := FMTower new.
	m2 := tower metamodel.
	m2 importString: '((FM3.Package (name ''EG'') (classes (FM3.Class (name ''Boe'')))))'.
	(m2 elementNamed: 'EG') notNil should beTrue.
	(m2 elementNamed: 'EG.Boe') notNil should beTrue
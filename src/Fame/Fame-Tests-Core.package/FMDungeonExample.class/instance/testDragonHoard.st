running
testDragonHoard
	| a b x y |
	a := (t metamodel elementNamed: 'RPG.Dragon') createInstance.
	b := (t metamodel elementNamed: 'RPG.Dragon') createInstance.
	x := (t metamodel elementNamed: 'RPG.Treasure') createInstance.
	y := (t metamodel elementNamed: 'RPG.Treasure') createInstance.
	a hoard isCollection should beTrue.
	a hoard isEmpty should beTrue.
	b hoard isCollection should beTrue.
	b hoard isEmpty should beTrue.
	x keeper isCollection should beFalse.
	x keeper isNil should beTrue.
	y keeper isCollection should beFalse.
	y keeper isNil should beTrue.
	a hoard add: x.
	x keeper should = a.
	a hoard size should = 1.
	a hoard should include: x.
	a hoard add: y.
	y keeper should = a.
	a hoard size should = 2.
	a hoard should include: y.
	a hoard add: y.
	y keeper should = a.
	a hoard size should = 2.
	b hoard add: y.
	y keeper should = b.
	b hoard size should = 1.
	b hoard should include: y.
	a hoard size should = 1.
	a hoard should not include: y.
	b hoard remove: y.
	y keeper isNil should beTrue.
	b hoard size should = 0.
	b hoard should not include: y
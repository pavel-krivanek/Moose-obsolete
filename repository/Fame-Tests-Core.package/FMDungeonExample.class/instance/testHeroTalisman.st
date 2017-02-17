running
testHeroTalisman
	| a b x y |
	a := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	b := (t metamodel elementNamed: 'RPG.Hero') createInstance.
	x := (t metamodel elementNamed: 'RPG.Treasure') createInstance.
	y := (t metamodel elementNamed: 'RPG.Treasure') createInstance.
	a talisman isCollection should beFalse.
	a talisman isNil should beTrue.
	b talisman isCollection should beFalse.
	b talisman isNil should beTrue.
	x owner isCollection should beFalse.
	x owner isNil should beTrue.
	y owner isCollection should beFalse.
	y owner isNil should beTrue.
	a talisman: x.
	a talisman should = x.
	b talisman isNil should beTrue.
	x owner should = a.
	y owner isNil should beTrue.
	a talisman: y.
	a talisman should = y.
	b talisman isNil should beTrue.
	x owner isNil should beTrue.
	y owner should = a.
	b talisman: y.
	a talisman isNil should beTrue.
	b talisman should = y.
	x owner isNil should beTrue.
	y owner should = b.
	b talisman: nil.
	a talisman isNil should beTrue.
	b talisman isNil should beTrue.
	x owner isNil should beTrue.
	y owner isNil should beTrue
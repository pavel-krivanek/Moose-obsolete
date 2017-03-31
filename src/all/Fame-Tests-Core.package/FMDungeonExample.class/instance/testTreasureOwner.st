running
testTreasureOwner
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
	x owner: a.
	a talisman should = x.
	b talisman isNil should beTrue.
	x owner should = a.
	y owner isNil should beTrue.
	y owner: a.
	a talisman should = y.
	b talisman isNil should beTrue.
	x owner isNil should beTrue.
	y owner should = a.
	y owner: b.
	a talisman isNil should beTrue.
	b talisman should = y.
	x owner isNil should beTrue.
	y owner should = b.
	y owner: nil.
	a talisman isNil should beTrue.
	b talisman isNil should beTrue.
	x owner isNil should beTrue.
	y owner isNil should beTrue
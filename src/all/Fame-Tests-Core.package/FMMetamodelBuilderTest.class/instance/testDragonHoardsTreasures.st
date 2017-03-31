running
testDragonHoardsTreasures
	| a b |
	a := metamodel elementNamed: 'RPG.Dragon.hoard'.
	b := metamodel elementNamed: 'RPG.Treasure.keeper'.
	a opposite should = b.
	b opposite should = a.
	a type should = b mmClass.
	b type should = a mmClass.
	a isMultivalued should beTrue.
	b isMultivalued should beFalse
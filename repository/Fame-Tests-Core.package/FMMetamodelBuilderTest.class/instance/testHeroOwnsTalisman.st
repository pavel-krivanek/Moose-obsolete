running
testHeroOwnsTalisman
	| a b |
	a := metamodel elementNamed: 'RPG.Treasure.owner'.
	b := metamodel elementNamed: 'RPG.Hero.talisman'.
	a opposite should = b.
	b opposite should = a.
	a type should = b mmClass.
	b type should = a mmClass.
	a isMultivalued should beFalse.
	b isMultivalued should beFalse
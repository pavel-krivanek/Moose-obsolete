running
testDragonsKilledByHeros
	| a b |
	a := metamodel elementNamed: 'RPG.Dragon.killedBy'.
	b := metamodel elementNamed: 'RPG.Hero.kills'.
	a opposite should = b.
	b opposite should = a.
	a type should = b mmClass.
	b type should = a mmClass.
	a isMultivalued should beTrue.
	b isMultivalued should beTrue
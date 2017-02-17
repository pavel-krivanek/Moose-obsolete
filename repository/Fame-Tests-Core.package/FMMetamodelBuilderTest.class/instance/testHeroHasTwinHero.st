running
testHeroHasTwinHero
	| a |
	a := metamodel elementNamed: 'RPG.Hero.twin'.
	a opposite should = a.
	a type should = a mmClass.
	a isMultivalued should beFalse
tests
testMixedAPI

	| mmodel age dragon rings hoard keeper |
	builder package: 'RPG' with: [
		builder class: 'Dragon' with: [
			builder property: #rings withMany: 'String'.
			builder property: #age with: #Number ]].
	builder pragmaProperty: #keeper in: RPGTreasure.
	mmodel := builder metamodel.

	mmodel size should = 7.
	(mmodel elementNamed: 'RPG') isFM3Package should beTrue.
	(mmodel elements select: #isFM3Class) size should = 2.
	(mmodel elements select: #isFM3Property) size should = 4.

	age := (mmodel elementNamed: 'RPG.Dragon.age').
	age type should = FM3MetaDescription number.
	age implementingSelector should = #age.
	age mmClass should = (mmodel elementNamed: 'RPG.Dragon').
	age isMultivalued should beFalse.
	
	dragon := (mmodel elements select: [ :e | e name = #Dragon ]).
	dragon size should = 1.
	dragon := dragon anyOne.
	dragon package should = (mmodel elementNamed: 'RPG').
	dragon attributes size should = 3.
	dragon implementingClass should = RPGDragon.
	
	dragon attributes detect: [ :a | a name = #age ] ifNone: [ self fail ].
	dragon attributes detect: [ :a | a name = #rings ] ifNone: [ self fail ].
	dragon attributes detect: [ :a | a name = #hoard ] ifNone: [ self fail ].

	rings := (mmodel elementNamed: 'RPG.Dragon.rings').
	rings type should = FM3MetaDescription string.
	rings implementingSelector should = #rings.
	rings hasOpposite should beFalse.
	rings mmClass should = dragon.
	rings isMultivalued should beTrue.

	hoard := (mmodel elementNamed: 'RPG.Dragon.hoard').
	keeper := (mmodel elementNamed: 'RPG.Treasure.keeper').

	hoard type should = (mmodel elementNamed: 'RPG.Treasure').
	hoard opposite should = keeper.
	hoard mmClass should = dragon.
	hoard isMultivalued should beTrue.

	keeper type should = (mmodel elementNamed: 'RPG.Dragon').
	keeper opposite should = hoard.
	keeper mmClass should = (mmodel elementNamed: 'RPG.Treasure').
	keeper isMultivalued should beFalse.

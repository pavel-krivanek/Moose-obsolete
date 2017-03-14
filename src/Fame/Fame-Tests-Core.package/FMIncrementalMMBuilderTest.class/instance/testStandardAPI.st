tests
testStandardAPI

	| mmodel age dragon rings hoard keeper |
	builder package: 'RPG' with: [
		builder class: RPGDragon with: [
			builder property: #rings withMany: 'String' ].
		builder class: 'RPGDragon' with: [
			builder property: #age with: #Number.
			builder derivedProperty: #hoard withMany: 'RPG.RPGTreasure' opposite: #keeper ].
		builder class: 'RPGTreasure' with: [
			builder property: #keeper with: 'RPG.RPGDragon' opposite: #hoard ]].

	mmodel := builder metamodel.

	mmodel size should = 7.
	(mmodel elementNamed: 'RPG') isFM3Package should beTrue.
	(mmodel elements select: #isFM3Class) size should = 2.
	(mmodel elements select: #isFM3Property) size should = 4.

	age := (mmodel elementNamed: 'RPG.RPGDragon.age').
	age type should = FM3MetaDescription number.
	age implementingSelector should = #age.
	age mmClass should = (mmodel elementNamed: 'RPG.RPGDragon').
	age isMultivalued should beFalse.
	
	dragon := (mmodel elements select: [ :e | e name = #RPGDragon ]).
	dragon size should = 1.
	dragon := dragon anyOne.
	dragon package should = (mmodel elementNamed: 'RPG').
	dragon attributes size should = 3.
	dragon implementingClass should = RPGDragon.
	
	dragon attributes detect: [ :a | a name = #age ] ifNone: [ self fail ].
	dragon attributes detect: [ :a | a name = #rings ] ifNone: [ self fail ].
	dragon attributes detect: [ :a | a name = #hoard ] ifNone: [ self fail ].

	rings := (mmodel elementNamed: 'RPG.RPGDragon.rings').
	rings type should = FM3MetaDescription string.
	rings implementingSelector should = #rings.
	rings hasOpposite should beFalse.
	rings mmClass should = dragon.
	rings isMultivalued should beTrue.

	hoard := (mmodel elementNamed: 'RPG.RPGDragon.hoard').
	keeper := (mmodel elementNamed: 'RPG.RPGTreasure.keeper').

	hoard type should = (mmodel elementNamed: 'RPG.RPGTreasure').
	hoard opposite should = keeper.
	hoard mmClass should = dragon.
	hoard isMultivalued should beTrue.
	hoard isDerived should beTrue.

	keeper type should = (mmodel elementNamed: 'RPG.RPGDragon').
	keeper opposite should = hoard.
	keeper mmClass should = (mmodel elementNamed: 'RPG.RPGTreasure').
	keeper isMultivalued should beFalse.
	keeper isDerived should beFalse.

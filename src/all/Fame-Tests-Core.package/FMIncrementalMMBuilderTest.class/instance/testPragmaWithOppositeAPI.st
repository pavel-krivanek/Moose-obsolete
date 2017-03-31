tests
testPragmaWithOppositeAPI

	|  mmodel dragon treasure hero hoard keeper |
	builder pragmaClass: RPGTreasure.
	builder pragmaProperty: #keeper in: RPGTreasure.
	builder pragmaProperty: #kills in: RPGHero.
	mmodel := builder metamodel.

	mmodel size should = 8.
	(mmodel elementNamed: 'RPG') isFM3Package should beTrue.
	(mmodel elements select: #isFM3Class) size should = 3.
	(mmodel elements select: #isFM3Property) size should = 4.
	
	(mmodel elements select: #isFM3Property) do: [ :a | 
		a hasOpposite should beTrue ].

	dragon := mmodel elementNamed: 'RPG.Dragon'.
	treasure := mmodel elementNamed: 'RPG.Treasure'.
	hero := mmodel elementNamed: 'RPG.Hero'.

	hoard := (mmodel elementNamed: 'RPG.Dragon.hoard').
	keeper := (mmodel elementNamed: 'RPG.Treasure.keeper').

	hoard type should = treasure.
	hoard mmClass should = dragon.
	hoard opposite should = keeper.
	hoard isMultivalued should beTrue.

	keeper type should = dragon.
	keeper mmClass should = treasure.
	keeper opposite should = hoard.
	keeper isMultivalued should beFalse.

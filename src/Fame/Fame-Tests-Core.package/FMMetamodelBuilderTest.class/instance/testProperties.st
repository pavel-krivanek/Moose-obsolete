running
testProperties
	metamodel properties size should = 7.
	(metamodel elementNamed: 'RPG.Dragon.hoard') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Dragon.hoard') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Dragon.killedBy') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Dragon.killedBy') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Treasure.keeper') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Treasure.keeper') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Treasure.owner') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Treasure.owner') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Hero.twin') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Hero.twin') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Hero.kills') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Hero.kills') isFM3Property should beTrue.
	(metamodel elementNamed: 'RPG.Hero.talisman') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Hero.talisman') isFM3Property should beTrue
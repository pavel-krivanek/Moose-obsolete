running
testClasses
	metamodel classes size should = 3.
	(metamodel elementNamed: 'RPG.Dragon') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Dragon') isFM3Class should beTrue.
	(metamodel elementNamed: 'RPG.Treasure') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Treasure') isFM3Class should beTrue.
	(metamodel elementNamed: 'RPG.Hero') notNil should beTrue.
	(metamodel elementNamed: 'RPG.Hero') isFM3Class should beTrue
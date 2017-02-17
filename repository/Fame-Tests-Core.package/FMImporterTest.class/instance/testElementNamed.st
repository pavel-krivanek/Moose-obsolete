running
testElementNamed
	self testImportHeinekenMetamodel.
	self shouldnt: [ tower metamodel elementNamed: 'HNK.Beer' ] raise: Error.
	(tower metamodel elementNamed: 'HNK.Beer') isFM3Class should beTrue.
	(tower metamodel elementNamed: 'HNK.Beer') fullName should = 'HNK.Beer'
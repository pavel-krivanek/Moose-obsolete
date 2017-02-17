running
testMetamodelContainsCompound
	| metarepo |
	metarepo := self class createMetamodel.
	(metarepo elementNamed: 'EQ.Compound') notNil should beTrue
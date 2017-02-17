running
testAllSubclasses
	| metarepo |
	metarepo := self class createMetamodel.
	(metarepo elementNamed: 'EQ.Expression') notNil should beTrue.
	(metarepo elementNamed: 'EQ.Expression') allSubclasses size should = 4
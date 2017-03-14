running
testFM3
	| fm3 |
	fm3 := FMMetaRepository fm3.
	fm3 notNil should beTrue.
	fm3 metamodel should = fm3
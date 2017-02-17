running
testFM3Classes
	| fm3 |
	fm3 := FMMetaRepository fm3.
	(fm3 descriptionOf: FM3Element) notNil should beTrue.
	(fm3 descriptionOf: FM3PropertyDescription) notNil should beTrue.
	(fm3 descriptionOf: FM3PackageDescription) notNil should beTrue.
	(fm3 descriptionOf: FM3MetaDescription) notNil should beTrue.
	(fm3 descriptionOf: FMMetaRepositoryTest) isNil should beTrue.
"	self should: [ fm3 descriptionOf: FMMetaRepositoryTest ] raise: Error"
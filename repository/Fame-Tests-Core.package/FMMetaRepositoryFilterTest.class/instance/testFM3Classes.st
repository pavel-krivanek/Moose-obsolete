tests-metarepository
testFM3Classes
	
	| fm3 names visitor repoFM3 |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	(fm3 descriptionOf: FM3Element) notNil should beTrue.
	(fm3 descriptionOf: FM3PropertyDescription) notNil should beTrue.
	(fm3 descriptionOf: FM3PackageDescription) notNil should beTrue.
	(fm3 descriptionOf: FM3MetaDescription) notNil should beTrue.
	"No longer true Updated test since descriptionOf: can return nil"
	(fm3 descriptionOf: FMMetaRepositoryTest) isNil should beTrue.
"	self should: [ fm3 descriptionOf: FMMetaRepositoryTest ] raise: Error"
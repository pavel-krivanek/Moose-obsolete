tests-metarepository
testFM3
	| fm3 repoFM3 visitor |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	fm3 notNil should beTrue.
	fm3 metamodel should = fm3
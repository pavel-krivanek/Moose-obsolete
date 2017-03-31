tests-metarepository
testResolving
	
	| or m fm3 visitor repoFM3 |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	or := FMImporter new repository: (FMMetaRepository with: fm3).
	m := FMModelBuilder new client: or.
	m document: [ m new: 'FM3.Class' with: [ m a: #name of: 'MyName' ] ].
	or repository elements isEmpty should beFalse.
	or repository elements size should = 1.
	or repository elements anyOne isFM3Class should beTrue
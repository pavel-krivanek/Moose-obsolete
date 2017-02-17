tests-metarepository
testBookMetamodel
	
	| or m repo fm3 visitor repoFM3 |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	or := FMImporter new repository: (FMMetaRepository with: fm3).
	m := FMModelBuilder new client: or.
	m document: [ m new: 'FM3.Class' with: [ m a: #name of: 'Book' ] ].
	repo := or repository asMetarepository.
	repo elements isEmpty should beFalse.
	repo elements size should = 1.
	repo elements anyOne name should = #Book
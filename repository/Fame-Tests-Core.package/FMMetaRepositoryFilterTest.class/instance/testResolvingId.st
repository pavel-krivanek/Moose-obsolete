tests-metarepository
testResolvingId
	
	| or m fm3 visitor repoFM3 |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	or := FMImporter new repository: (FMMetaRepository with: fm3).
	m := FMModelBuilder new client: or.
	m document:
			[ m new: 'FM3.Class'
				with:
					[ m id: 3.
					m a: #name of: 'MyName'.
					m a: #superclass of: [ m ref: 2 ] ].
			m new: 'FM3.Class'
				with:
					[ m id: 2.
					m a: #name of: 'MyName2' ] ].
	or repository elements isEmpty should beFalse.
	or repository elements size should = 2
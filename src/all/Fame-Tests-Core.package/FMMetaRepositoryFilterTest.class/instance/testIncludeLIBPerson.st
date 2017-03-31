test-include-fameexamples
testIncludeLIBPerson

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: libModel;
		classes: {libModel descriptionOf: LIBPerson}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'LIB'.
	names should include: 'LIB.Person'.
	names should include: 'LIB.Book'.
	
	names should not include: 'LIB.Library'.
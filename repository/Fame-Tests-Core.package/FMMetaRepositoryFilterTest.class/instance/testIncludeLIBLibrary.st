test-include-fameexamples
testIncludeLIBLibrary

	| repo names visitor |
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: libModel;
		classes: {libModel descriptionOf: LIBLibrary}.
	visitor run.

	repo := visitor newMetaRepository.
	names := repo elements collect: #fullName.
	names should include: 'LIB'.
	names should include: 'LIB.Library'.
	names should include: 'LIB.Person'.
	names should include: 'LIB.Book'.
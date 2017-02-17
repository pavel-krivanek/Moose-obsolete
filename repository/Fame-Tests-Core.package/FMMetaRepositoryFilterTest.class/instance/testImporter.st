tests-metarepository
testImporter

	| fm3 repoFM3 visitor string repo imp |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	fm3 := visitor newMetaRepository.
	
	string := '((FM3.Package (id: 1) (name ''Office'')))'.
	repo := FMMetaRepository with: fm3.
	imp := FMImporter new.
	imp repository: repo.
	imp fromString: string.
	imp run.
	repo elements size should = 1.
	repo elements anyOne name should = #Office.
	repo elements anyOne fullName should = 'Office'.
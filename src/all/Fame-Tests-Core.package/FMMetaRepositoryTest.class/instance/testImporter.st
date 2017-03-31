running
testImporter
	| string repo imp |
	string := '((FM3.Package (id: 1) (name ''Office'')))'.
	repo := FMMetaRepository with: FMMetaRepository fm3.
	imp := FMImporter new.
	imp repository: repo.
	imp fromString: string.
	imp run.
	repo elements size should = 1.
	repo elements anyOne name should = #Office.
	repo elements anyOne fullName should = 'Office'.
	^ repo
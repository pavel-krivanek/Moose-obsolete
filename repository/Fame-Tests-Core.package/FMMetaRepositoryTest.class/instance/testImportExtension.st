running
testImportExtension
	| string repo imp |
	repo := self testImporter.
	string := '((FM3.Class (name ''Employee'') (package (ref: Office))))'.
	imp := FMImporter new.
	imp repository: repo.
	imp fromString: string.
	imp run.
	repo elements size should = 2.
	(repo elementNamed: 'Office.Employee') package should = (repo elementNamed: 'Office').
	^ repo
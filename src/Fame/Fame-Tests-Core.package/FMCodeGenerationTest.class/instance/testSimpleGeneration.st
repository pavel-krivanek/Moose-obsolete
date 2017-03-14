running
testSimpleGeneration
	| tower gen |
	tower := FMTower new.
	tower metamodel importString: FMMSEParserTest sampleMetaMse.
	gen := FMDefaultCodeGenerator new.
	gen classNamePrefix: 'Zork'.	"random prefix Zork"
	gen visit: tower metamodel.
	gen previewChangesIfShiftPressed.
	gen model changes changesSize should > 0.
	FMUtil default squeakDo:
			[ (gen model changes changes collect: #changeClassName) asSet size should = 3.
			(gen model changes changes collect: #changeClassName) should include: #ZorkLIBBook.
			(gen model changes changes collect: #changeClassName) should include: #ZorkLIBPerson.
			(gen model changes changes collect: #changeClassName) should include: #ZorkLIBLibrary ]
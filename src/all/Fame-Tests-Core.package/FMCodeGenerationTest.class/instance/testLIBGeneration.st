running
testLIBGeneration
	| tower generator |
	tower := FMTower new.
	tower metamodel importString: FMMSEParserTest sampleMetaMse.
	generator := FMDefaultCodeGenerator new.
	generator defaultSuperclass: LIBRoot.
	generator visit: tower metamodel.
	generator previewChangesIfShiftPressed
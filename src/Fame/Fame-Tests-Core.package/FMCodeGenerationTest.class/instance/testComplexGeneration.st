running
testComplexGeneration
	"self run: #testComplexGeneration"
	| tower generator |
	tower := FMTower new.
	tower metamodel importString: FMMSEParserTest famix30mse.

	"We generate Smalltalk classes from the classes contained in the repository"
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metamodel.
	generator model changes changesSize should > 0.
	generator previewChangesIfShiftPressed
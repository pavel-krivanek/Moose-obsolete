running
testRPGGeneration
	| tower generator |
	tower := FMTower new.
	tower metamodel importString: FMDungeonExample metamodelString.
	generator := FMDefaultCodeGenerator new.
	generator defaultCategory: 'Fame-Example'.
	generator visit: tower metamodel.
	generator previewChangesIfShiftPressed
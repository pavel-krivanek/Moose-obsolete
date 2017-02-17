running
testImportMetamodelAndCreateClasses
	| metamodel tower gen |
	metamodel := self class metamodelMSE.
	tower := FMTower new.
	tower metamodel importString: metamodel.
	gen := FMDefaultCodeGenerator new.
	gen visit: tower metamodel.
	gen previewChangesIfShiftPressed
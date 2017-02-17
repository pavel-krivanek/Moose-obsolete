running
testFM3Generation
	| tower generator |
	tower := FMTower new.
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metaMetamodel.
	generator previewChangesIfShiftPressed
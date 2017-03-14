import-export
importMetamodelFrom: aStream

	| tower generator |
	tower := FMCompleteTower new.
	tower metamodel importStream: aStream.
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metamodel.
	generator previewChanges. "keep shift pressed to see the changes"

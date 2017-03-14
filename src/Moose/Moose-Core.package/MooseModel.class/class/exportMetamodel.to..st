import-export
exportMetamodel: aMetamodel to: aStream

	aMetamodel exportOn: aStream
"
	| tower |
	tower := FMCompleteTower new.
	tower metamodel: aMetamodel.

	tower metamodel exportOn: aStream
"
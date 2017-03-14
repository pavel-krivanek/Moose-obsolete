import-export
importFrom: aStream withMetamodel: aMetamodel

	| tower importer |
	tower := FMCompleteTower new.
	tower metamodel addAll: aMetamodel elements.
	importer := MSEImporter new.
	importer repository: tower model.
	importer stream: aStream.
	importer run.
	tower model updateCache.
	^ tower model
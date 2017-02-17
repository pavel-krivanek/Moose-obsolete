import-export
importFrom: aStream withMetamodel: aMetamodel filteredBy: anImportingContext

	| tower importer famixElementNames importerFilter |
	
	famixElementNames := OrderedCollection new.
	anImportingContext entityKindsToBeExtracted do: [:each | famixElementNames add: 'FAMIX.',each asString ].
	"anImportingContext  shouldImportMethodBody 
		ifTrue: [famixElementNames add: 'FAMIX.Parameter'.
			anImportingContext shouldImportAccess ifTrue:[famixElementNames add:'FAMIX.Reference']]."
	
	"famixElementNames := anImportingContext fullNamesOfEntitiesToBeExtracted ."
	
	tower := FMCompleteTower new.
	tower metamodel addAll: aMetamodel elements.
	importer := MSEImporter new.
	importer repository: tower model.
	importer stream: aStream.
	importerFilter := FMImporterFilter onClient: importer withFilter: famixElementNames.
	importerFilter  run.
	tower model updateCache.
	^ tower model
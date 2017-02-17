import-export
importFrom: aStream filteredBy: anImportingContext 
	^self 
		importFrom: aStream
		withMetamodel: self meta
		filteredBy: anImportingContext
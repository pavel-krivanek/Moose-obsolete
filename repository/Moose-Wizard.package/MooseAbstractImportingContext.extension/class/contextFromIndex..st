*moose-wizard
contextFromIndex: anIndex

	anIndex = 2 ifTrue: [^FAMIXStandardImportingContext].
	anIndex = 3 ifTrue: [^AllMooseMetamodelImportingContext].
	^ nil
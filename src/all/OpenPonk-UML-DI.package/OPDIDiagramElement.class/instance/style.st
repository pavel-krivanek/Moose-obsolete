accessing
style
	^ self localStyle ifNil: [ self sharedStyle ]
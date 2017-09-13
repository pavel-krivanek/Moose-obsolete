accessing
sharedStyle
	^ sharedStyle ifNil: [ self owningElement ifNotNil: #sharedStyle ]
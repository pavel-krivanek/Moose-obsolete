accessing
belongsTo
	^ self parentScope ifNil: [ self parentPackage ]
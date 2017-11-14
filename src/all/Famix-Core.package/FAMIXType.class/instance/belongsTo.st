accessing
belongsTo
	^ self container ifNil: [ self parentPackage ]
accessing
modelClass
	modelClass ifNil: [ self beForPackage ].
	^ modelClass
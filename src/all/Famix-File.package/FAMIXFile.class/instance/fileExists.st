testing
fileExists
	name ifNil: [ ^ false ].
	^ self fileReference exists
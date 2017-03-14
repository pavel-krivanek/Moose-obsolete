testing
fileExists
	name isNil ifTrue: [ ^ false ].
	^ self fileReference exists
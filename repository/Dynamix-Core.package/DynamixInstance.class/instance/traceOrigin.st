properties
traceOrigin
	^ self rootAlias creator
			ifNotNil: [ :activation | activation trace ifNil: [ 'n/a' ] ] 
			ifNil: [ 'n/a' ]
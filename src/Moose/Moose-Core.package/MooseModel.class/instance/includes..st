testing
includes: anItem 
	anItem isNil ifTrue: [^ false].
	^ self includesID: anItem mooseID
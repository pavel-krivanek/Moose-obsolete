testing
includes: anItem 
	anItem ifNil: [^ false].
	^ self includesID: anItem mooseID
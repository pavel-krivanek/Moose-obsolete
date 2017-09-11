accessing
startLine
	^ startLine ifNil: [ startLine := fileAnchor startLine ifNil: [ 1 ] ]
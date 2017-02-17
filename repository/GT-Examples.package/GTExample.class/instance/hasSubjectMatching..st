testing
hasSubjectMatching: aStringOrSubject
	^ (self hasSubject: aStringOrSubject)
		or: [ self subjects anySatisfy: [ :each | 
			each hasLiteralThorough: aStringOrSubject ] ]
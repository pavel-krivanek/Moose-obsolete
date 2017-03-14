statements-elements
complexIdentifier
	^super complexIdentifier
	
	==> [ :token | 
		token first isNil 
			ifTrue: [token second]
			ifFalse: [token first first , '.' , token second]]
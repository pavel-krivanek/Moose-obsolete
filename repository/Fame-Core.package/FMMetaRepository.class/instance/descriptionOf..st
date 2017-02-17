accessing
descriptionOf: smalltalkClass 
	self flag: 'it should not return nil by default'.
	^ classDict 
		at: smalltalkClass 
		ifAbsent: [ 
			nameDict 
				at: smalltalkClass name 
				ifAbsent: [ nil ] ]
accessing
descriptionOf: smalltalkClass ifAbsent: elseBlock 
	^ classDict 
		at: smalltalkClass
		ifAbsent: elseBlock
testing
isValid
	^ super isValid 
		and: [ self hasValidArguments ]
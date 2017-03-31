invoking
function
	^ self contextNode notNil
		and: [self contextNode isInLanguage: self firstArgument]
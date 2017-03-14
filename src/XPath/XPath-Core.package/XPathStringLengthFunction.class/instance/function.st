invoking
function
	^ (self hasArguments
		ifTrue: [self firstArgument]
		ifFalse: [self contextNode ifNil: ['']]) size
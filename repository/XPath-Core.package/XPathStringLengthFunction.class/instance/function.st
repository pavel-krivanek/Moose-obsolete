invoking
function
	self hasArguments
		ifTrue: [^ self firstArgument size]
		ifFalse: [^ self contextNode stringValue size]
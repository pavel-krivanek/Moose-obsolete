invoking
function
	self hasArguments
		ifTrue: [^ self firstArgument]
		ifFalse: [
			"From the spec: 'If the argument is omitted, it defaults to a
			node-set with the context node as its only member.'"
			^ self nodeSetClass with: self contextNode]
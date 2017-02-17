parsing
parseOn: context
	| result |
	
	result := parser parseOn: context.
	result isPetitFailure ifFalse: [ 
		context indentStack push: result.
	].
	^ result
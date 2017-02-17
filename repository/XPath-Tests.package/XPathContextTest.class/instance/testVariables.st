tests
testVariables
	| context variables |

	context := self newContext.
	self
		assert: context variables isDictionary;
		assert: context variables isEmpty.

	variables := self variables.
	self
		assert: (context variables: variables) == context;
		assert: context variables = variables;
		deny: context variables == variables.

	variables := Array with: 'newName' -> 'newValue'.
	self
		assert: (context variables: variables) == context;
		assert: context variables associations asArray = variables.
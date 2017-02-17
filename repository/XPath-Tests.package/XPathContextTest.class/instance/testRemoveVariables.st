tests
testRemoveVariables
	| context |

	context := self newContext.
	context variables: self variables.
	self
		assert: context removeVariables == context;
		deny: context hasVariables.
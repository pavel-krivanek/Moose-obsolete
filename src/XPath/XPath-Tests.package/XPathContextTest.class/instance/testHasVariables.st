tests
testHasVariables
	| context |

	context := self newContext.
	self deny: context hasVariables.

	context variables: self variables.
	self assert: context hasVariables.

	context removeVariables.
	self deny: context hasVariables.
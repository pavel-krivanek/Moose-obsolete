tests
testRemoveFunctions
	| context |

	context := self newContext.
	self
		assert: context removeFunctions == context;
		deny: context hasFunctions.
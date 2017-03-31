tests
testHasFunctions
	| context |

	context := self newContext.
	self assert: context hasFunctions.

	context functions: self newFunctionSet.
	self deny: context hasFunctions.
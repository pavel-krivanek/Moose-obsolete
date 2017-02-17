tests
testFunctions
	| context functions |

	context := self newContext.
	functions := self functions.
	self
		assert: context functions = functions;
		assert: context functions == functions.

	functions := self functionSetClass default.
	self
		assert: (context functions: functions) == context;
		assert: context functions = functions;
		assert: context functions == functions.

	self
		assert: (context functions: functions asArray) == context;
		assert: context functions = functions;
		deny: context functions == functions.
tests
testRemoveFunctionIfAbsent
	| context |

	context := self newContext.
	self functions do: [:each | | oldFunctionSet |
		"test copy-on-write"
		oldFunctionSet := context functions.
		self
			assert: (context includesFunction: each);
			assert:
				(context
					removeFunction: each
					ifAbsent: [#absent]) == each;
			deny: (context includesFunction: each);
			deny: context functions == oldFunctionSet;
			deny: context functions = oldFunctionSet.

		self
			assert:
				(context
					removeFunction: each
					ifAbsent: [#absent]) == #absent].
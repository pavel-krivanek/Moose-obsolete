tests
testRemoveFunction
	| context |

	context := self newContext.
	self functions do: [:each | | oldFunctionSet |
		"test copy-on-write"
		oldFunctionSet := context functions.
		self
			assert: (context includesFunction: each);
			assert: (context removeFunction: each) == each;
			deny: (context includesFunction: each);
			deny: context functions == oldFunctionSet;
			deny: context functions = oldFunctionSet.
	
		self
			should: [context removeFunction: each]
			raise: Error].
tests
testAddFunction
	| context |

	context := self newContext.
	context functions: self newFunctionSet.
	self functions do: [:each | | oldFunctionSet |
		"test copy-on-write"
		oldFunctionSet := context functions.
		self
			deny: (context includesFunction: each);
			assert: (context addFunction: each) == each;
			assert: (context includesFunction: each);
			deny: context functions == oldFunctionSet;
			deny: context functions = oldFunctionSet].
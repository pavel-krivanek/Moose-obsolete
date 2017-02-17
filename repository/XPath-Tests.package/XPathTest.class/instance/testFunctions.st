tests
testFunctions
	| functionSet |

	functionSet := self functionSetClass default.
	self
		assert: self newContext functions = functionSet;
		deny: self newContext functions == functionSet;
		assert: (self contextClass functions: functionSet) functions == functionSet;
		assert: (self newContext functions: functionSet) functions == functionSet.
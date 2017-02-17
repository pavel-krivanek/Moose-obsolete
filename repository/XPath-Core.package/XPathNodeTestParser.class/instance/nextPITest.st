parsing
nextPITest
	| name |

	readStream skipSeparators.
	name :=
		(self nextStringLiteralOptional: true)
			ifNil: [self nextNCNameOptional: true].
	name
		ifNil: [context handlePINodeTestWith: handler]
		ifNotNil: [
			context
				handlePINodeTestForName: name
				with: handler].
	self nextEndArgumentList.
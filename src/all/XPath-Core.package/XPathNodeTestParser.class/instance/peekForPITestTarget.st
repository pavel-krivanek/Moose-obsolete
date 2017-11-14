parsing - peeking
peekForPITestTarget
	| target |

	readStream skipSeparators.
	(target :=
		(self nextStringLiteralOptional: true)
			ifNil: [self nextNCNameOptional: true])
		ifNil: [^ false]
		ifNotNil: [
			state
				handlePINodeTestForName: target
				with: handler.
			^ true]
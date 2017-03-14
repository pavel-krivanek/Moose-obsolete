parsing
nextModifierForArgument: anArgument
	readStream skipSeparators.
	(readStream peekFor: $*)
		ifTrue: [
			hasOptionalArgument
				ifTrue: [self errorUnboundedArgumentAfterOptional].
			hasUnboundedArgument := true.
			handler handleUnboundedArgument: anArgument]
		ifFalse: [
			(readStream peekFor: $?)
				ifTrue: [
					hasOptionalArgument := true.
					handler handleOptionalArgument: anArgument]
				ifFalse: [
					hasOptionalArgument
						ifTrue: [self errorNonOptionalArgumentAfterOptional].
					handler handleArgument: anArgument]].
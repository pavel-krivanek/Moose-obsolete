parsing
nextStringLiteralOptional: aBoolean
	(readStream peek == $"
		or: [readStream peek == $'])
		ifTrue: [^ self expectUpTo: readStream next]
		ifFalse: [
			aBoolean
				ifFalse: [self errorExpectedStringLiteral].
			^ nil]
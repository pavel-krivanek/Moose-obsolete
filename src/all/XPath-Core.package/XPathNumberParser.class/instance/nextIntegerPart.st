parsing
nextIntegerPart
	| integerPart |

	(readStream atEnd not
		and: [readStream peek isDigit])
		ifFalse: [self errorExpectedIntegerPart].
	integerPart := readStream next asciiValue - $0 asciiValue.
	[readStream atEnd not
		and: [readStream peek isDigit]]
		whileTrue: [
			integerPart :=
				(integerPart * 10) +
					(readStream next asciiValue - $0 asciiValue)].
	handler handleIntegerPart: integerPart.
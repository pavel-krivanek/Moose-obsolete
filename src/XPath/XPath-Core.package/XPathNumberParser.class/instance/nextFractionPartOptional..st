parsing
nextFractionPartOptional: aBoolean
	(readStream atEnd not
		and: [readStream peek isDigit])
		ifTrue: [| base fractionPart |
			base := 10.
			fractionPart :=
				(readStream next asciiValue - $0 asciiValue) / base.
			[readStream atEnd not
				and: [readStream peek isDigit]]
				whileTrue: [
					base := base * 10.
					fractionPart :=
						fractionPart +
							((readStream next asciiValue - $0 asciiValue) / base)].
			handler handleFractionPart: fractionPart]
		ifFalse: [
			aBoolean
				ifTrue: [handler handleFractionPart: 0]
				ifFalse: [self errorExpectedFractionPart]]
*Moose-Algos-LinearAlgebra
readSmalltalkAndCFloat: integerPart from: aStream
	"Answer an instance of me as described on the stream, aStream."

	| value coercionClass possibleCoercionClass precision digit num den exp neg endOfNumber eChar |
	precision := 0.
	num := 0.
	den := 1.
	coercionClass := Integer.
	(aStream peekFor: $.)
		ifTrue: [ 
			"<integer>.<fraction>"
			(aStream atEnd not and: [ aStream peek isDigit ])
				ifTrue: [ 
					| atEnd |
					coercionClass := Float.
					[ (atEnd := aStream atEnd) or: [ (digit := aStream next) isDigit not ] ]
						whileFalse: [ 
							num := num * 10 + digit digitValue.
							precision := precision + 1 ].
					den := 10 ** precision.
					atEnd
						ifFalse: [ aStream skip: -1 ] ]
				ifFalse: [ 
					"oops - just <integer>."
					"un-gobble the period"
					aStream skip: -1 ] ].
	eChar := aStream peek.
	eChar
		ifNil: [ possibleCoercionClass := nil ]
		ifNotNil: [ 
			"SystemUtils isVW20LanguageCompatible ifTrue: [eChar := eChar asLowercase]."
			possibleCoercionClass := self chooseFloatRepresentationFor: eChar.
			possibleCoercionClass == nil
				ifFalse: [ aStream next ] ].
	exp := nil.
	possibleCoercionClass == nil
		ifFalse: [ 
			coercionClass := possibleCoercionClass.
			endOfNumber := aStream position.
			(aStream peekFor: $+)
				ifTrue: [ aStream next ].
			neg := aStream peekFor: $-.
			((digit := aStream peek) notNil and: [ digit isDigit ])
				ifTrue: [ 
					exp := self readIntegerFrom: aStream radix: 10.
					neg
						ifTrue: [ exp := exp negated ] ]
				ifFalse: [ aStream position: endOfNumber ] ].
	value := integerPart + (num / den).	"The exponent will be added in the next step."
	^ self
		coerce: value
		to: coercionClass
		precision: precision
		exponent: exp
		exponentChar: eChar
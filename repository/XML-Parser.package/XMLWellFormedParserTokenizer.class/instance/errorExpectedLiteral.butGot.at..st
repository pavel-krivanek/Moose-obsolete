errors
errorExpectedLiteral: aString butGot: aCharacter at: aStringPosition
	| receivedString |

	receivedString :=
		(aString
			copyReplaceFrom: aStringPosition
			to: aString size
			with:
				(aCharacter ifNil: ['']) asString,
				(streamReader next: aString size - aStringPosition)).

	self
		errorExpectedLiteral: aString
		butGot: receivedString.
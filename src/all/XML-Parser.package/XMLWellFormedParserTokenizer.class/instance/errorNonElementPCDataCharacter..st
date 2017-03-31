errors
errorNonElementPCDataCharacter: aCharacter
	aCharacter == $&
		ifTrue: [self errorNonElementGeneralEntityOrCharacterReference]
		ifFalse: [
			self
				formatParseError: 'Character data "{1}" outside of element'
				with: aCharacter]
private
expectNext: aCharacter
	| nextChar |

	((nextChar := readStream next) == aCharacter)
		ifFalse: [
			self
				errorExpectedLiteral: aCharacter
				butGot: nextChar].
	^ aCharacter.
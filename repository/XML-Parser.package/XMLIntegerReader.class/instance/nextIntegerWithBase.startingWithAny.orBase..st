reading
nextIntegerWithBase: aFirstBase startingWithAny: aCharacterCollection orBase: aSecondBase
	(aCharacterCollection includes: self peek)
		ifTrue: [
			self next.
			^ self nextIntegerWithBase: aFirstBase]
		ifFalse: [^ self nextIntegerWithBase: aSecondBase]
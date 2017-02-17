private
isWordChar: aCharacterOrNil
	^ aCharacterOrNil ~~ nil and: [ aCharacterOrNil isAlphaNumeric ]
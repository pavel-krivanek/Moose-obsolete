private
atBeginOfWord: aStream
	^ (self isWordChar: (self lastCharIn: aStream)) not and: [ self isWordChar: aStream peek ]
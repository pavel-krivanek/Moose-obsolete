private
atEndOfWord: aStream
	^ (self isWordChar: (self lastCharIn: aStream)) and: [ (self isWordChar: aStream peek) not ]
private
atWordBoundary: aStream
	^ (self isWordChar: (self lastCharIn: aStream)) xor: (self isWordChar: aStream peek)
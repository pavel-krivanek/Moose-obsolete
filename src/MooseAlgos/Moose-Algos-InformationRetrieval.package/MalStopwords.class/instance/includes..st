testing
includes: aString
	
	| size |
	size := aString size.
	^(size > 0 and: [size <= array size])
		and: [(array at: size) includes: aString]
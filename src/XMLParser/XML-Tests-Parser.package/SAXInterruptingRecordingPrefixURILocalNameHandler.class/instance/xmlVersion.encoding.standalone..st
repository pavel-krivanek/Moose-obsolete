handling - lexical
xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean
	super
		xmlVersion: aVersionFloat
		encoding: anEncoding
		standalone: aBoolean.

	self interruptOn = #xmlVersion:encoding:standalone:
		ifTrue: [self interruptParsing].
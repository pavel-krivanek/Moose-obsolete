handling - content
endPrefixMapping: aPrefix
	super endPrefixMapping: aPrefix.

	self interruptOn = #endPrefixMapping:
		ifTrue: [self interruptParsing].
handling - content
startPrefixMapping: aPrefix uri: aURI
	super
		startPrefixMapping: aPrefix
		uri: aURI.

	self interruptOn = #startPrefixMapping:uri:
		ifTrue: [self interruptParsing].
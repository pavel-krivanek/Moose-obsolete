mapping
mapPrefix: aPrefix to: aURI
	self
		validatePrefix: aPrefix
		beforeMappingTo: aURI.

	"copy-on-write"
	self copiedPrefixMappings
		at: aPrefix
		put: aURI.
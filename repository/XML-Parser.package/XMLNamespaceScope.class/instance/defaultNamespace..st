mapping
defaultNamespace: aURI
	self
		validatePrefix: ''
		beforeMappingTo: aURI.

	"copy-on-write"
	self copiedPrefixMappings
		at: ''
		put: aURI.
defaults
defaultNodeTestParserStateClass
	^ defaultNodeTestParserStateClass
		ifNil: [
			self lookupAxisSpecifier.
			defaultNodeTestParserStateClass]
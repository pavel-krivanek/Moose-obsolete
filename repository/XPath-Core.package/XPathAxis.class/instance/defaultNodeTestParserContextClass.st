accessing
defaultNodeTestParserContextClass
	^ defaultNodeTestParserContextClass
		ifNil: [
			self lookupAxisSpecifier.
			defaultNodeTestParserContextClass]
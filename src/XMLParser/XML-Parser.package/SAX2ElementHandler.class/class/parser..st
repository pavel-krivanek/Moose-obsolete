parsing
parser: aParser
	^ self
		parser: aParser
		parent: aParser elementHandler
		parentFactory: aParser elementHandlerFactory
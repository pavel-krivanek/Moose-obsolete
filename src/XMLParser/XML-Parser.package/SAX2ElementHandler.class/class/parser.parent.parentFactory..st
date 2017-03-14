parsing
parser: aParser parent: anElementHandler parentFactory: anElementHandlerFactory
	^ self new
		setParser: aParser
		parent: anElementHandler
		parentFactory: anElementHandlerFactory
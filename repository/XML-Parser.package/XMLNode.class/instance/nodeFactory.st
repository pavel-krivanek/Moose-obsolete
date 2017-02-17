accessing
nodeFactory
	^ self configuration
		ifNil: [XMLNodeFactory new]
		ifNotNil: [:config | config nodeFactory]
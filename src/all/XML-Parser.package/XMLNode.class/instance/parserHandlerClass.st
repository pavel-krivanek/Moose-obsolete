private
parserHandlerClass
	^ self configuration
		ifNil: [XMLDOMParser]
		ifNotNil: [:config | config parserHandlerClass]
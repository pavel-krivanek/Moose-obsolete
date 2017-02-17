private
errorMaxExternalEntitySize: aMaxSize exceededByURI: anXMLURIOrURIString
	XMLLimitException
		formatSignal: 'Entity exceeds max size of {1} bytes: {2}'
		with: aMaxSize
		with: anXMLURIOrURIString asString
converting
asRetrievableResource
	^ self isLocalURI
		ifTrue: [self asXMLFileHandle]
		ifFalse: [self asXMLHTTPRequest]
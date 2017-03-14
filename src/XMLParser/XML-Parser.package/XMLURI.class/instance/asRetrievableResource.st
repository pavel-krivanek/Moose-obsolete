converting
asRetrievableResource
	^ self isLocalURI
		ifTrue: [self path asXMLFileHandle]
		ifFalse: [self asString asXMLHTTPRequest]
resolving
streamResolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [:maxSize |
		anXMLURIOrURIString asXMLURI
			streamGetUpToLimit: maxSize
			decoding: false]
resolving
streamResolveExternalEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super streamResolveExternalEntityURI: uri]
		ifFalse: [
			"non-local entities are cached"
			^ self cachingStreamResolveEntityURI: uri]
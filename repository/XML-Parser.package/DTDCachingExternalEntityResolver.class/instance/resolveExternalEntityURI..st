resolving
resolveExternalEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super resolveExternalEntityURI: uri]
		ifFalse: [
			"non-local entities are cached"
			^ self cachingResolveEntityURI: uri]
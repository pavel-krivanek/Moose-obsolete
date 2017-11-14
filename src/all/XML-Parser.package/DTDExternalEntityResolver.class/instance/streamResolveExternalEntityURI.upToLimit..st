resolving
streamResolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| uri |

	^ (uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [
			self
				streamResolveLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
		ifFalse: [
			self
				streamResolveNonLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
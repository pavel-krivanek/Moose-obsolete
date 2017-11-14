resolving
resolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| uri |

	^ (uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [
			self
				resolveLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
		ifFalse: [
			self
				resolveNonLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
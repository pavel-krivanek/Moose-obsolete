private
streamResolveLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ XMLDecodingReadStreamAdapter on:
		(anXMLURIOrURIString asXMLFileHandle
			streamGetUpToLimit: aMaxSize
			decoding: false)
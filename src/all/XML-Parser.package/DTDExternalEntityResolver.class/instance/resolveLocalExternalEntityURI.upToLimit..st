private
resolveLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ DTDUndecodedResolvedExternalParsedEntityReplacement rawContents:
		(anXMLURIOrURIString asXMLFileHandle
			getUpToLimit: aMaxSize
			decoding: false)
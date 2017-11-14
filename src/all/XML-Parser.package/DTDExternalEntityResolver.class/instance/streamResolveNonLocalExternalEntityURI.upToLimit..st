private
streamResolveNonLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ (self
		resolveNonLocalExternalEntityURI: anXMLURIOrURIString
		upToLimit: aMaxSize) readStream
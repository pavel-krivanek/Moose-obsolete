resolving
streamResolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ (self
		resolveExternalEntityURI: anXMLURIOrURIString
		upToLimit: aMaxSize) readStream
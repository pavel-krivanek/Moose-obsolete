retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	^ self asRetrievableResource
		getUpToLimit: aMaxSize
		decoding: aBoolean
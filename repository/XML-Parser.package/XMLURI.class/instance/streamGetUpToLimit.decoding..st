retrieving
streamGetUpToLimit: aMaxSize decoding: aBoolean
	^ self asRetrievableResource
		streamGetUpToLimit: aMaxSize
		decoding: aBoolean
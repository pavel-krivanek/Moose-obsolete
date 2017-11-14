retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	^ (self
		getResponseUpToLimit: aMaxSize
		decoding: aBoolean) content
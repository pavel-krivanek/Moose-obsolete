retrieving
getResponseUpToLimit: aMaxSize decoding: aBoolean
	^ [self
			basicGetResponseUpToLimit: aMaxSize
			decoding: aBoolean]
			on: Error
			do: [:error |
				(self isMaxSizeException: error)
					ifTrue: [self errorHTTPResponseLimitExceeded]
					ifFalse: [self errorHTTPException: error]]
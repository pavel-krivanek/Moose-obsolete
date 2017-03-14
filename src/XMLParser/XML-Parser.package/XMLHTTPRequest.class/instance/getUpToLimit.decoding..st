retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	^ [self
			basicGetUpToLimit: aMaxSize
			decoding: aBoolean]
			on: Error
			do: [:error |
				(self isMaxSizeException: error)
					ifTrue: [self errorHTTPResponseLimitExceeded]
					ifFalse: [self errorHTTPException: error]]
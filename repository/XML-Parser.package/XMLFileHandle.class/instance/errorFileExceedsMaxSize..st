private
errorFileExceedsMaxSize: aMaxSize
	XMLLimitException
		formatSignal: 'File exceeds max size of {1} bytes: {2}'
		with: aMaxSize
		with: self path
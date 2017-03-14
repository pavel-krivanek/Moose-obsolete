accessing
size
	self exists
		ifFalse: [self errorFileDoesNotExist].

	^ self basicFileSize.
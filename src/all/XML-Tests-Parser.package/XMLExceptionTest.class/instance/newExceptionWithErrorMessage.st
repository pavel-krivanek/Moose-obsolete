instance creation
newExceptionWithErrorMessage
	^ self newException
		messageText: self errorMessage;
		yourself
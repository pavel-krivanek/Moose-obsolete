instance creation
newOtherExceptionWithErrorMessage
	^ self newOtherException
		messageText: self errorMessage;
		yourself
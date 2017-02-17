accessing
exceptionClass: anObject
	exceptionClass := FMMultivalueLink
		on: self
		update: #exceptions
		from: self exceptionClass
		to: anObject
accessing
errorMessageWithLineNumber
	^ '{1} (near line {2})' format:
		(Array
			with: self errorMessage
			with: self lineNumber)
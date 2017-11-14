accessing
errorMessageWithLineAndColumnNumber
	^ '{1} (near line {2}, column {3})' format:
		(Array
			with: self errorMessage
			with: self lineNumber
			with: self columnNumber)
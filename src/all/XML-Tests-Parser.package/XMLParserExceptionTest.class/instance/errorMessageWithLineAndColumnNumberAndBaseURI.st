accessing
errorMessageWithLineAndColumnNumberAndBaseURI
	^ '{1} (near line {2}, column {3} in {4})' format:
		(Array
			with: self errorMessage
			with: self lineNumber
			with: self columnNumber
			with: self baseURI)
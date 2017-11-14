accessing
errorMessageWithLineNumberAndBaseURI
	^ '{1} (near line {2} in {3})' format:
		(Array
			with: self errorMessage
			with: self lineNumber
			with: self baseURI)
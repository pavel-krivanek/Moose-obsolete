accessing
errorMessageWithBaseURI
	^ '{1} (in {2})' format:
		(Array
			with: self errorMessage
			with: self baseURI)
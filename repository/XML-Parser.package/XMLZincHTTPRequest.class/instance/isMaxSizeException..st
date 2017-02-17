private
isMaxSizeException: anException
	^ anException class == (XMLClassFinder classNamed: #ZnEntityTooLarge)
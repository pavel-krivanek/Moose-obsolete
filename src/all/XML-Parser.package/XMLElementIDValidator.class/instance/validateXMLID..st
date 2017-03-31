validating
validateXMLID: anID
	anID isXMLNCName
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: 'xml:id'].
	self
		validateUniquenessOfID: anID
		inAttribute: 'xml:id'.
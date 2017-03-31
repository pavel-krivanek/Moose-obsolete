validating
validateID: anID inAttribute: anAttribute
	anID isXMLName
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: anAttribute].
	self
		validateUniquenessOfID: anID
		inAttribute: anAttribute.
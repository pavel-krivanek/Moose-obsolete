validating
validateIDReference: anID inAttribute: anAttribute
	anID isXMLName
		ifFalse: [
			self
				errorInvalidID: anID
				inAttribute: anAttribute].
	self idReferences add: anID.
validating
validateXMLSpaceAttributeDeclaration
	self allowedValues size > 2
		ifTrue: [self errorInvalidXMLSpaceAttributeDeclaration].
	self allowedValues do: [:each |
		(each = 'preserve'
			or: [each = 'default'])
			ifFalse: [self errorInvalidXMLSpaceAttributeDeclaration]].
private
hasUndeclaredOrDeclaredID: anID declaredWith: anAttributeValidatorDictionary
	self attributeNamesAndValuesDo: [:attributeName :attributeValue |
		"only check its value if it's been declared as an ID attribute
		or if it's named 'xml:id'"
		((anAttributeValidatorDictionary
			at: attributeName
			ifAbsent: [nil])
				ifNil: [attributeName = 'xml:id']
				ifNotNil: [:attributeValidator | attributeValidator isID])
			ifTrue: [
				attributeValue = anID
					ifTrue: [^ true]]].
	^ false.
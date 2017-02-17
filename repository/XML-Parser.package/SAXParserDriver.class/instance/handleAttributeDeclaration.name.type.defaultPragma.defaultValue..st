handling - dtd
handleAttributeDeclaration: anElement name: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	super
		handleAttributeDeclaration: anElement
		name: anAttribute
		type: aType
		defaultPragma: aDefaultPragma
		defaultValue: aDefaultValue.

	self saxHandler
		attributeDeclaration: anElement
		name: anAttribute
		type: aType
		defaultPragma: aDefaultPragma
		defaultValue: aDefaultValue.
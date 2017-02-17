handling - declaration
attributeDeclaration: anElementName name: anAttributeName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self topNode addNode:
		(self nodeFactory attributeDeclarationClass
			element: anElementName
			attribute: anAttributeName
			type: aType
			defaultPragma: aDefaultPragma
			defaultValue: aDefaultValue)
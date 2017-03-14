handling - declaration
attributeDeclaration: anElementName name: anAttributeName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	super
		attributeDeclaration: anElementName
		name: anAttributeName
		type: aType
		defaultPragma: aDefaultPragma
		defaultValue: aDefaultValue.

	self interruptOn = #attributeDeclaration:name:type:defaultPragma:defaultValue:
		ifTrue: [self interruptParsing].
handling - declaration
attributeDeclaration: anElementName name: anAttributeName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self
		recordMessageReceiver: self
		selector: #attributeDeclaration:name:type:defaultPragma:defaultValue:
		arguments:
			(OrderedCollection new
				addLast: anElementName;
				addLast: anAttributeName;
				addLast: aType;
				addLast: aDefaultPragma;
				addLast: aDefaultValue;
				yourself)
printing
writeXMLOn: aWriter
	aWriter attributeDeclaration
		element: self element;
		attribute: self attribute;
		type: self type;
		defaultPragma: self defaultPragma;
		defaultValue: self defaultValue;
		write
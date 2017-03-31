printing
writeXMLOn: aWriter
	aWriter elementDeclaration
		element: self element;
		contentModel: self contentModel;
		write
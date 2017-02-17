printing
writeXMLOn: aWriter
	aWriter notationDeclaration
		name: self name;
		publicID: self publicID;
		systemID: self systemID;
		write
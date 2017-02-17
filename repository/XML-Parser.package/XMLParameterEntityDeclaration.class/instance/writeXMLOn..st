printing
writeXMLOn: aWriter
	aWriter entityDeclaration
		name: self name;
		isParameter: true;
		replacement: self replacement;
		publicID: self publicID;
		systemID: self systemID;
		write
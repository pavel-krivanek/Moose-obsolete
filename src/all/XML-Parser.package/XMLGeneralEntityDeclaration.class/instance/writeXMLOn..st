printing
writeXMLOn: aWriter
	aWriter entityDeclaration
		name: self name;
		isParameter: false;
		replacement: self replacement;
		publicID: self publicID;
		systemID: self systemID;
		ndata: self ndata;
		write
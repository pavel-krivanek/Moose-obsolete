writing
writePublicExternalIDOn: aWriter
	aWriter
		nextPutAll: 'PUBLIC';
		space;
		writeUnescapedString: self publicID;
		space;
		writeUnescapedString: self systemID
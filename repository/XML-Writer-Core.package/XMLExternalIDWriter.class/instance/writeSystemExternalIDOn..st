writing
writeSystemExternalIDOn: aWriter
	aWriter
		nextPutAll: 'SYSTEM';
		space;
		writeUnescapedString: self systemID
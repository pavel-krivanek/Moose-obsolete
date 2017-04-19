printing
writeXMLOn: aWriter
	aWriter
		writeStringName: self name;
		nextPut: $=;
		writeEscapedContentString: self value
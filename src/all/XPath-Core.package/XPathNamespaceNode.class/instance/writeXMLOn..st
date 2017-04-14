printing
writeXMLOn: aWriter
	aWriter
		writeXMLNS: self name;
		nextPut: $=;
		writeEscapedContentString: self uri
printing
writeXMLOn: aWriter
	self
		writeXMLDeclarationOn: aWriter;
		writeDoctypeDeclarationOn: aWriter;
		writeInnerXMLOn: aWriter
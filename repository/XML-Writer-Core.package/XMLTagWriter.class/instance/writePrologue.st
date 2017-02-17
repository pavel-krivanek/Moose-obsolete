private
writePrologue
	self writer
		formatBeforeStartTag: self;
		nextPut: $<;
		writeName: self name.
	xmlnsDeclarations
		ifNotNil: [self writer writeXMLNSDeclarations: xmlnsDeclarations].
	attributes
		ifNotNil: [self writer writeAttributes: attributes].
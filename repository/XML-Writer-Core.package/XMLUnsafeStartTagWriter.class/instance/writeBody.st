private
writeBody
	self writer writeName: self name.
	xmlnsDeclarations
		ifNotNil: [self writer writeXMLNSDeclarations: xmlnsDeclarations].
	attributes
		ifNotNil: [self writer writeAttributes: attributes].
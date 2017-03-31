printing
writeXMLDeclarationOn: aWriter
	self version
		ifNotNil: [
			aWriter xml
				version: self version;
				encoding: self encoding;
				standalone: self isStandalone;
				write]
printing
writeDoctypeDeclarationOn: aWriter
	self hasDoctypeDeclaration
		ifTrue: [self doctypeDeclaration writeXMLOn: aWriter]
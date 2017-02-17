source
sourceXMLWithEncoding: anEncoding andASCIIContentAsUTF16LE: anASCIIContentString
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self asciiToUTF16LE: '?>', anASCIIContentString)
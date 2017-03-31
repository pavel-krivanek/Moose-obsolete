source
sourceXMLWithEncoding: anEncoding andASCIIContentAsUTF16BE: anASCIIContentString
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self asciiToUTF16BE: '?>', anASCIIContentString)
source
sourceXMLWithEncoding: anEncoding andASCIIContentAsUTF32BE: anASCIIContentString
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self asciiToUTF32BE: '?>', anASCIIContentString)
source
sourceXMLWithEncoding: anEncoding andASCIIContentAsUTF32LE: anASCIIContentString
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self asciiToUTF32LE: '?>', anASCIIContentString)
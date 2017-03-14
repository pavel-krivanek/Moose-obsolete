instance creation
onFileNamed: aFileName
	^ self on:
		(XMLDecodingReadStreamAdapter on:
			aFileName asXMLFileHandle rawReadStream)
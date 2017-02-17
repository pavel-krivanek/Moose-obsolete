instance creation
onFileNamed: aFileName
	"Returns a new parser on the specified file but doesn't parse it.
	If aFileName is a relative path, it will be resolved in the context of
	the current working directory.

	Can be used to configure file parsers with 'configuring' messages before
	parsing with parseDocument."

	^ self
		on:
			"return an XMLDecodingReadStreamAdapter on the undecoded file
			stream so we can do our own decoding looking at byte order
			marks and <?xml ...?> encoding attributes"
			(XMLDecodingReadStreamAdapter on:
				aFileName asXMLFileHandle rawReadStream)
		documentURI: aFileName
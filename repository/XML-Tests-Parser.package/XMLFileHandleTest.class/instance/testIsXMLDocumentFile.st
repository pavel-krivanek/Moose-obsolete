tests
testIsXMLDocumentFile
	XMLFileHandle hasSupportedImplementation
		ifFalse: [^ self].

	#('atom' 'dbk' 'docm' 'docx' 'pptm' 'pptx' 'rdf' 'rss' 'svg' 'xbel'
		'xfd' 'xfdl' 'xhtml' 'xlsm' 'xlsx' 'xml' 'xsd' 'xspf' 'xul')
		do: [:each | | file |
			file := 'test.', each.
			self
				assert: file asXMLFileHandle isXMLDocumentFile;
				assert: file asUppercase asXMLFileHandle isXMLDocumentFile].

	#('txt' 'html' 'jpeg' 'jpg' 'gif' 'dtd' 'ent')
		do: [:each | | file |
			file := 'test.', each.
			self
				deny: file asXMLFileHandle isXMLDocumentFile;
				deny: file asUppercase asXMLFileHandle isXMLDocumentFile].
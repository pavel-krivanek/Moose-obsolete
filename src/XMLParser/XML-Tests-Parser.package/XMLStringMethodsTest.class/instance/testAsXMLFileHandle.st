tests
testAsXMLFileHandle
	XMLFileHandle hasSupportedImplementation
		ifTrue: [| path fileHandle |
			path := 'test.xml'.
			fileHandle := path asXMLFileHandle.
			self
				assert: fileHandle class == XMLFileHandle implementation;
				assert: fileHandle path = path]
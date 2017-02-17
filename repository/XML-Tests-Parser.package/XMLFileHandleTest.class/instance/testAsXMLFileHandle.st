tests
testAsXMLFileHandle
	XMLFileHandle hasSupportedImplementation
		ifTrue: [| fileHandle |
			fileHandle := '' asXMLFileHandle.
			self
				assert: fileHandle class == XMLFileHandle implementation;
				assert: fileHandle asXMLFileHandle == fileHandle]
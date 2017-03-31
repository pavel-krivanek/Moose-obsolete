tests
testPath
	XMLFileHandle hasSupportedImplementation
		ifTrue: [| fileHandle |
			fileHandle := XMLFileHandle implementation path: 'test'.
			self
				assert: fileHandle class == XMLFileHandle implementation;
				assert: fileHandle path = 'test']
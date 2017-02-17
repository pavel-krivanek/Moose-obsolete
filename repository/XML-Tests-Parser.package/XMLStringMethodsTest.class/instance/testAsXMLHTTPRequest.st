tests
testAsXMLHTTPRequest
	XMLHTTPRequest hasSupportedImplementation
		ifTrue: [| url request |
			url := 'test.xml'.
			request := url asXMLHTTPRequest.
			self
				assert: request class == XMLHTTPRequest implementation;
				assert: request url = url]
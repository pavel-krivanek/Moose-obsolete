accessing
readStream
	^ XMLDecodingReadStreamAdapter
		on: self rawContents readStream
		streamConverter: self encoding asXMLStreamConverter
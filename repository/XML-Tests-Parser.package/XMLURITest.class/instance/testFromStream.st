tests
testFromStream
	self allURIStringsDo: [:each | | stream uri |
		stream := each readStream.
		uri := XMLURI fromStream: stream.
		self
			assert: uri class == XMLURI;
			assert: uri uriString isNil;
			assert: uri = each asXMLURI;
			assert: stream atEnd]
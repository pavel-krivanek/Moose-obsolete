tests
testReadFrom
	self allURIStringsDo: [:each | | stream uri |
		stream := each readStream.
		uri := XMLURI readFrom: stream.
		self
			assert: uri class == XMLURI;
			assert: uri uriString isNil;
			assert: uri = each asXMLURI;
			assert: stream atEnd.

		uri := XMLURI readFrom: each.
		self
			assert: uri class == XMLURI;
			assert: uri uriString = each;
			assert: uri = each asXMLURI]
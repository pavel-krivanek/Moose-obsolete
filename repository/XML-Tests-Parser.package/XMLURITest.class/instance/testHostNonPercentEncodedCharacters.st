tests
testHostNonPercentEncodedCharacters
	| host uriString uri |

	host := self unreservedCharacters, self subDelimiterCharacters.
	uriString := 'http://', host.
	uri := uriString asXMLURI.
	self
		assert: uri scheme = 'http';
		assert: uri host = host asLowercase;
		assert: uri rawHost = host.

	uri uriString: nil.
	self assert: uri printString = uriString.
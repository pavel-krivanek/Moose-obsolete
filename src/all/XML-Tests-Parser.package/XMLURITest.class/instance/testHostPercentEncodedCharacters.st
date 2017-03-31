tests
testHostPercentEncodedCharacters
	| prefix encoded decoded encodedURIString uri |

	prefix := 'http://'.
	encoded := self percentEncodedASCIICharacters, '+'.
	decoded := self asciiCharacters, '+'.
	encodedURIString := prefix, encoded.
	uri := encodedURIString asXMLURI.
	self
		assert: uri scheme = 'http';
		assert: uri host = decoded asLowercase;
		assert: uri rawHost = encoded.

	uri uriString: nil.
	self assert: uri printString = encodedURIString.
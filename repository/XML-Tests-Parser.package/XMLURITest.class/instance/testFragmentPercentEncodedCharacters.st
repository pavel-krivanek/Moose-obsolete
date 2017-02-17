tests
testFragmentPercentEncodedCharacters
	| encoded decoded encodedURIString uri |

	encoded := self percentEncodedASCIICharacters, '+'.
	decoded := self asciiCharacters, '+'.
	encodedURIString := '#', encoded.
	uri := encodedURIString asXMLURI.
	self
		assert: uri fragment = decoded;
		assert: uri rawFragment = encoded.

	uri uriString: nil.
	self assert: uri printString = encodedURIString.
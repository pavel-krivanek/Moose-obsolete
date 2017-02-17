tests
testPathPercentEncodedCharacters
	| encoded decoded encodedURIString uri |

	encoded := self percentEncodedASCIICharacters, '+'.
	decoded := self asciiCharacters, '+'.
	encodedURIString := encoded, '/', encoded.
	uri := encodedURIString asXMLURI.
	self assert: uri path = (decoded, '/', decoded).
	self assert:
		uri pathSegments = (OrderedCollection with: decoded with: decoded).
	self assert:
		uri rawPathSegments = (OrderedCollection with: encoded with: encoded).

	uri uriString: nil.
	self assert: uri printString = encodedURIString.
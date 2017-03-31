tests
testUserInfoPercentEncodedCharacters
	| prefix encoded decoded suffix encodedURIString uri |

	prefix := 'mailto:'.
	encoded := self percentEncodedASCIICharacters, '+'.
	decoded := self asciiCharacters, '+'.
	suffix := '@', self host.
	encodedURIString := prefix, encoded, suffix.
	uri := encodedURIString asXMLURI.
	self
		assert: uri scheme = 'mailto';
		assert: uri userInfo = decoded;
		assert: uri rawUserInfo = encoded.

	uri uriString: nil.
	self assert: uri printString = encodedURIString.
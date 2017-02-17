tests
testQueryPercentOrPlusEncodedCharacters
	| encoded decoded encodedURIString uri |

	encoded := self percentEncodedASCIICharacters, '+'.
	decoded := self asciiCharacters, ' '.
	encodedURIString := '?', encoded, '=', encoded.
	uri := encodedURIString asXMLURI.
	self
		assert: uri query = (OrderedCollection with: decoded -> decoded);
		assert: (uri queryAt: decoded) = decoded;
		assert:
			(uri
				queryAt: decoded
				ifAbsent: ['absent']) = decoded;
		assert: (uri queryValuesAt: decoded) = (OrderedCollection with: decoded);
		assert:
			(uri
				queryValuesAt: decoded
				ifAbsent: [#()]) = (OrderedCollection with: decoded);
		assert: uri queryKeys = (OrderedCollection with: decoded);
		assert: (uri queryIncludesKey: decoded);
		assert: uri rawQuery = (OrderedCollection with: encoded -> encoded).

	uri uriString: nil.
	self assert: uri printString = encodedURIString.
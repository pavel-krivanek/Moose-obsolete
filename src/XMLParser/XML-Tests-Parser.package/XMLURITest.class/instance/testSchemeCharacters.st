tests
testSchemeCharacters
	| scheme uri |

	scheme := self alphaNumericCharacters, '+-.'.
	uri := (scheme, '://', self host) asXMLURI.
	self
		assert: uri scheme = scheme asLowercase;
		assert: uri host = self host.
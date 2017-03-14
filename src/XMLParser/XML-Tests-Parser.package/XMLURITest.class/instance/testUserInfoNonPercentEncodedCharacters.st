tests
testUserInfoNonPercentEncodedCharacters
	| userInfo uriString uri |

	userInfo := self unreservedCharacters, self subDelimiterCharacters, ':'.
	uriString := 'mailto:', userInfo, '@', self host.
	uri := uriString asXMLURI.
	self
		assert: uri scheme = 'mailto';
		assert: uri userInfo = userInfo;
		assert: uri host = self host.

	uri uriString: nil.
	self assert: uri printString = uriString.
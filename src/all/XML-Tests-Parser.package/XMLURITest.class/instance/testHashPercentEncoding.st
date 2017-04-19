tests
testHashPercentEncoding
	| uriTemplate unencodedURI encodedURI |

	uriTemplate :=
		'http://{1}@{1}:80/{1}/{1}?{1}={1}&{1}={1}#{1}'.
	unencodedURI :=
		(uriTemplate format:
			(Array with: self alphaNumericCharacters)) asXMLURI.
	encodedURI :=
		(uriTemplate format:
			(Array with: self percentEncodedAlphaNumericCharacters)) asXMLURI.
	self assert: unencodedURI hash = unencodedURI hash.
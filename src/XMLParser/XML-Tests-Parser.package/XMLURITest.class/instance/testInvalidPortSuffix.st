tests
testInvalidPortSuffix
	| uri |

	uri := (self domainURIWithPortString, 'invalid', self absolute) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port = 80;
		assert: uri path = self absolute.

	uri := (self domainURIWithPortString, 'invalid', self queryURIString) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port = 80;
		assert: uri pathSegments isEmpty.

	uri := (self domainURIWithPortString, 'invalid', self fragmentURIString) asXMLURI.
	self
		assert: uri host = self host;
		assert: uri port = 80;
		assert: uri pathSegments isEmpty.
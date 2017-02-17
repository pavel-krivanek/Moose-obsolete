tests
testIPv6Hosts
	| ipv6Host uriString uri |

	ipv6Host := '[FEDC:BA98:7654:3210:FEDC:BA98:7654:3210]'.
	uriString := 'http://', ipv6Host, ':80', self absolute.
	uri := uriString asXMLURI.
	self
		assert: uri scheme = 'http';
		assert: uri host = ipv6Host;
		assert: uri port = 80;
		assert: uri path = self absolute;
		assert: uri query isEmpty;
		assert: uri fragment = ''.
	uri uriString: nil.
	self assert: uri printString = uriString.

	uriString := 'http://', ipv6Host, self absolute.
	uri := uriString asXMLURI.
	self
		assert: uri scheme = 'http';
		assert: uri host = ipv6Host;
		assert: uri port isNil;
		assert: uri path = self absolute;
		assert: uri query isEmpty;
		assert: uri fragment = ''.
	uri uriString: nil.
	self assert: uri printString = uriString.
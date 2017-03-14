tests
testCopyWithPort
	self allURIStringsDo: [:each | | uri oldPort newPort copy |
		uri := each asXMLURI.
		oldPort := uri port.
		newPort := (oldPort ifNil: [0]) + 1.
		copy := uri copyWithPort: newPort.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			assert: uri userInfo = copy userInfo;
			assert: uri host = copy host;
			deny: uri port = copy port;
			assert: uri port = oldPort;
			assert: copy port = newPort;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
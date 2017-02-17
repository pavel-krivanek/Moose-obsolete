tests
testCopy
	self allURIStringsDo: [:each | | uri copy |
		uri := each asXMLURI.
		copy := uri copy.
		self
			assert: uri uriString = each;
			assert: copy uriString isNil;
			assert: uri = each asXMLURI;
			deny: uri == copy;
			assert: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			assert: uri userInfo = copy userInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
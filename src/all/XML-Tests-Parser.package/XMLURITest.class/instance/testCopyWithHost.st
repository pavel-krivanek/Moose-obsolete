tests
testCopyWithHost
	self allURIStringsDo: [:each | | uri oldHost newHost copy |
		uri := each asXMLURI.
		oldHost := uri host.
		newHost := oldHost, 'new'.
		copy := uri copyWithHost: newHost.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			assert: uri userInfo = copy userInfo;
			deny: uri host = copy host;
			assert: uri host = oldHost;
			assert: copy host = newHost;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
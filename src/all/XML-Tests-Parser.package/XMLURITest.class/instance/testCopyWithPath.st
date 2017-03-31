tests
testCopyWithPath
	self allURIStringsDo: [:each | | uri oldPath newPath copy |
		uri := each asXMLURI.
		oldPath := uri path.
		newPath := oldPath, '/new'.
		copy := uri copyWithPath: newPath.
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
			assert: uri port = copy port;
			deny: uri path = copy path;
			assert: uri path = oldPath;
			assert: copy path = newPath;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
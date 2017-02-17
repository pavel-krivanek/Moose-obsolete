tests
testCopyWithScheme
	self allURIStringsDo: [:each | | uri oldScheme oldHasAuthorityPrefix newScheme copy |
		uri := each asXMLURI.
		oldScheme := uri scheme.
		oldHasAuthorityPrefix := uri hasAuthorityPrefix.
		newScheme := oldScheme, 'new'.
		copy := uri copyWithScheme: newScheme.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			deny: uri scheme = copy scheme;
			assert: uri scheme = oldScheme;
			assert: copy scheme = newScheme;
			assert: uri hasAuthorityPrefix = oldHasAuthorityPrefix.
		"If the original had no scheme and no // prefix, then the copy should
		gain one. Otherwise it should only have one if the original did."
		(oldScheme = ''
			and: [oldHasAuthorityPrefix not])
			ifTrue: [self assert: copy hasAuthorityPrefix]
			ifFalse: [self assert: copy hasAuthorityPrefix = oldHasAuthorityPrefix].
		self
			assert: uri userInfo = copy userInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
tests
testCopyWithFragment
	self allURIStringsDo: [:each | | uri oldFragment newFragment copy |
		uri := each asXMLURI.
		oldFragment := uri fragment.
		newFragment := oldFragment, 'new'.
		copy := uri copyWithFragment: newFragment.
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
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			deny: uri fragment = copy fragment;
			assert: uri fragment = oldFragment;
			assert: copy fragment = newFragment]
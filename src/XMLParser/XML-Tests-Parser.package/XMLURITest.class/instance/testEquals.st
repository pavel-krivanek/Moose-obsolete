tests
testEquals
	self allURIStringsDo: [:each | | uri otherURI |
		uri := each asXMLURI.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI scheme: uri scheme, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI rawUserInfo: uri userInfo, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI rawHost: uri host, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI rawPathSegments: (uri pathSegments copyWith: 'new').
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI rawQuery:
			(uri query copy
				add: 'new' -> '';
				yourself).
		self
			deny: uri = otherURI;
			deny: otherURI = uri.

		otherURI := each asXMLURI.
		self
			assert: uri = otherURI;
			assert: otherURI = uri.
		otherURI rawFragment: uri fragment, 'new'.
		self
			deny: uri = otherURI;
			deny: otherURI = uri]
tests
testCopyWithPathSegments
	self allURIStringsDo: [:each | | uri oldPathSegments oldRawPathSegments newPathSegments newRawPathSegments copy |
		uri := each asXMLURI.
		oldPathSegments := uri pathSegments.
		oldRawPathSegments := uri rawPathSegments.
		newPathSegments := oldPathSegments copyWith: 'new', self reservedCharacters.
		newRawPathSegments :=
			oldRawPathSegments copyWith: 'new', self percentEncodedReservedCharacters.
		copy := uri copyWithPathSegments: newPathSegments.
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
			deny: uri pathSegments = copy pathSegments;
			deny: uri rawPathSegments = copy rawPathSegments;
			assert: uri pathSegments = oldPathSegments;
			assert: uri rawPathSegments = oldRawPathSegments;
			assert: copy pathSegments = newPathSegments;
			assert: copy rawPathSegments = newRawPathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
tests
testCopyWithQuery
	self allURIStringsDo: [:each |
		| uri oldQuery oldRawQuery newQuery newRawQuery copy |
		uri := each asXMLURI.
		oldQuery := uri query.
		oldRawQuery := uri rawQuery.
		newQuery :=
			oldQuery copyWith:
				('newKey', self reservedCharacters) ->
					('newValue', self reservedCharacters).
		newRawQuery :=
			oldRawQuery copyWith:
				('newKey', self percentEncodedReservedCharacters) ->
					('newValue', self percentEncodedReservedCharacters).
		copy := uri copyWithQuery: newQuery.
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
			deny: uri query = copy query;
			deny: uri rawQuery = copy rawQuery;
			assert: uri query = oldQuery;
			assert: uri rawQuery = oldRawQuery;
			assert: copy query = newQuery;
			assert: copy rawQuery = newRawQuery;
			assert: uri fragment = copy fragment]
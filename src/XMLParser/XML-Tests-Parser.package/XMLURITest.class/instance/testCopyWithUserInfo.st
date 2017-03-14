tests
testCopyWithUserInfo
	self allURIStringsDo: [:each | | uri oldUserInfo oldRawUserInfo newUserInfo newRawUserInfo copy |
		uri := each asXMLURI.
		oldUserInfo := uri userInfo.
		oldRawUserInfo := uri rawUserInfo.
		newUserInfo := oldUserInfo, 'new', self reservedCharacters.
		newRawUserInfo := oldUserInfo, 'new', self percentEncodedReservedCharacters.
		copy := uri copyWithUserInfo: newUserInfo.
		self
			assert: uri = each asXMLURI;
			assert: uri uriString = each;
			assert: copy uriString isNil;
			deny: uri == copy;
			deny: uri = copy;
			assert: uri scheme = copy scheme;
			assert: uri hasAuthorityPrefix = copy hasAuthorityPrefix;
			deny: uri userInfo = copy userInfo;
			deny: uri rawUserInfo = copy rawUserInfo;
			assert: uri userInfo = oldUserInfo;
			assert: uri rawUserInfo = oldRawUserInfo;
			assert: copy userInfo = newUserInfo;
			assert: copy rawUserInfo = newRawUserInfo;
			assert: uri host = copy host;
			assert: uri port = copy port;
			assert: uri pathSegments = copy pathSegments;
			assert: uri query = copy query;
			assert: uri fragment = copy fragment]
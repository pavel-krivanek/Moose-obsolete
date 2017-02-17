tests
testSchemeAndHostCaseInsensitivity
	self allURIStringsDo: [:each | | uri uppercaseURI |
		uri := each asXMLURI.
		uppercaseURI := each asUppercase asXMLURI.
		self
			assert: uri scheme = uppercaseURI scheme;
			assert: uri hasAuthorityPrefix = uppercaseURI hasAuthorityPrefix.
		uri hasUserInfo
			ifTrue: [self deny: uri userInfo = uppercaseURI userInfo].
		self
			assert: uri host = uppercaseURI host;
			assert: uri port = uppercaseURI port.
		(uri hasPath
			and: [uri hasRootPath not])
			ifTrue: [self deny: uri pathSegments = uppercaseURI pathSegments].
		uri hasQuery
			ifTrue: [self deny: uri query = uppercaseURI query].
		uri hasFragment
			ifTrue: [self deny: uri fragment = uppercaseURI fragment]]
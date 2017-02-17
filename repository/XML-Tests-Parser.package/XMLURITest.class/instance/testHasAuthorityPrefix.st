tests
testHasAuthorityPrefix
	self
		deny: '' asXMLURI hasAuthorityPrefix;
		deny: '/' asXMLURI hasAuthorityPrefix;
		deny: self absolute asXMLURI hasAuthorityPrefix;
		deny: self absoluteDir asXMLURI hasAuthorityPrefix;
		deny: self absoluteDirRelativeCombined asXMLURI hasAuthorityPrefix;
		deny: self absoluteRelativeCombined asXMLURI hasAuthorityPrefix;
		assert: self domainURIString asXMLURI hasAuthorityPrefix;
		assert: self domainURIWithPortString asXMLURI hasAuthorityPrefix;
		deny: self emailURIString asXMLURI hasAuthorityPrefix;
		assert: self fileURIWithHostString asXMLURI hasAuthorityPrefix;
		assert: self fileURIString asXMLURI hasAuthorityPrefix;
		deny: self fragmentURIString asXMLURI hasAuthorityPrefix;
		assert: self fullURIString asXMLURI hasAuthorityPrefix;
		assert: self fullURIWithPortString asXMLURI hasAuthorityPrefix;
		deny: self queryURIString asXMLURI hasAuthorityPrefix;
		deny: self relative asXMLURI hasAuthorityPrefix;
		deny: self relativeAbsoluteCombined asXMLURI hasAuthorityPrefix;
		assert: self schemelessURIString asXMLURI hasAuthorityPrefix;
		assert: self schemelessURIWithPortString asXMLURI hasAuthorityPrefix
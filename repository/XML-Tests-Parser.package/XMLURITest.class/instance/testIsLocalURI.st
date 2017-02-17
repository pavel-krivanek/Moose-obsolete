tests
testIsLocalURI
	self
		assert: '' asXMLURI isLocalURI;
		assert: '/' asXMLURI isLocalURI;
		assert: self absolute asXMLURI isLocalURI;
		assert: self absoluteDir asXMLURI isLocalURI;
		assert: self absoluteDirRelativeCombined asXMLURI isLocalURI;
		assert: self absoluteRelativeCombined asXMLURI isLocalURI;
		deny: self domainURIString asXMLURI isLocalURI;
		deny: self domainURIWithPortString asXMLURI isLocalURI;
		deny: self emailURIString asXMLURI isLocalURI;
		assert: self fileURIWithHostString asXMLURI isLocalURI;
		assert: self fileURIString asXMLURI isLocalURI;
		assert: self fragmentURIString asXMLURI isLocalURI;
		deny: self fullURIString asXMLURI isLocalURI;
		deny: self fullURIWithPortString asXMLURI isLocalURI;
		assert: self queryURIString asXMLURI isLocalURI;
		assert: self relative asXMLURI isLocalURI;
		assert: self relativeAbsoluteCombined asXMLURI isLocalURI;
		deny: self schemelessURIString asXMLURI isLocalURI;
		deny: self schemelessURIWithPortString asXMLURI isLocalURI
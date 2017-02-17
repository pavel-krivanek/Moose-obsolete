tests
testHasAuthority
	self
		deny: '' asXMLURI hasAuthority;
		deny: '/' asXMLURI hasAuthority;
		deny: self absolute asXMLURI hasAuthority;
		deny: self absoluteDir asXMLURI hasAuthority;
		deny: self absoluteDirRelativeCombined asXMLURI hasAuthority;
		deny: self absoluteRelativeCombined asXMLURI hasAuthority;
		assert: self domainURIString asXMLURI hasAuthority;
		assert: self domainURIWithPortString asXMLURI hasAuthority;
		assert: self emailURIString asXMLURI hasAuthority;
		assert: self fileURIWithHostString asXMLURI hasAuthority;
		deny: self fileURIString asXMLURI hasAuthority;
		deny: self fragmentURIString asXMLURI hasAuthority;
		assert: self fullURIString asXMLURI hasAuthority;
		assert: self fullURIWithPortString asXMLURI hasAuthority;
		deny: self queryURIString asXMLURI hasAuthority;
		deny: self relative asXMLURI hasAuthority;
		deny: self relativeAbsoluteCombined asXMLURI hasAuthority;
		assert: self schemelessURIString asXMLURI hasAuthority;
		assert: self schemelessURIWithPortString asXMLURI hasAuthority
tests
testHasHost
	self
		deny: '' asXMLURI hasHost;
		deny: '/' asXMLURI hasHost;
		deny: self absolute asXMLURI hasHost;
		deny: self absoluteDir asXMLURI hasHost;
		deny: self absoluteDirRelativeCombined asXMLURI hasHost;
		deny: self absoluteRelativeCombined asXMLURI hasHost;
		assert: self domainURIString asXMLURI hasHost;
		assert: self domainURIWithPortString asXMLURI hasHost;
		assert: self emailURIString asXMLURI hasHost;
		assert: self fileURIWithHostString asXMLURI hasHost;
		deny: self fileURIString asXMLURI hasHost;
		deny: self fragmentURIString asXMLURI hasHost;
		assert: self fullURIString asXMLURI hasHost;
		assert: self fullURIWithPortString asXMLURI hasHost;
		deny: self queryURIString asXMLURI hasHost;
		deny: self relative asXMLURI hasHost;
		deny: self relativeAbsoluteCombined asXMLURI hasHost;
		assert: self schemelessURIString asXMLURI hasHost;
		assert: self schemelessURIWithPortString asXMLURI hasHost
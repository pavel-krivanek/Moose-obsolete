tests
testHasScheme
	self
		deny: '' asXMLURI hasScheme;
		deny: '/' asXMLURI hasScheme;
		deny: self absolute asXMLURI hasScheme;
		deny: self absoluteDir asXMLURI hasScheme;
		deny: self absoluteDirRelativeCombined asXMLURI hasScheme;
		deny: self absoluteRelativeCombined asXMLURI hasScheme;
		assert: self domainURIString asXMLURI hasScheme;
		assert: self domainURIWithPortString asXMLURI hasScheme;
		assert: self emailURIString asXMLURI hasScheme;
		assert: self fileURIWithHostString asXMLURI hasScheme;
		assert: self fileURIString asXMLURI hasScheme;
		deny: self fragmentURIString asXMLURI hasScheme;
		assert: self fullURIString asXMLURI hasScheme;
		assert: self fullURIWithPortString asXMLURI hasScheme;
		deny: self queryURIString asXMLURI hasScheme;
		deny: self relative asXMLURI hasScheme;
		deny: self relativeAbsoluteCombined asXMLURI hasScheme;
		deny: self schemelessURIString asXMLURI hasScheme;
		deny: self schemelessURIWithPortString asXMLURI hasScheme
tests
testIsRelative
	self
		assert: '' asXMLURI isRelative;
		assert: '/' asXMLURI isRelative;
		assert: self absolute asXMLURI isRelative;
		assert: self absoluteDir asXMLURI isRelative;
		assert: self absoluteDirRelativeCombined asXMLURI isRelative;
		assert: self absoluteRelativeCombined asXMLURI isRelative;
		deny: self domainURIString asXMLURI isRelative;
		deny: self domainURIWithPortString asXMLURI isRelative;
		deny: self emailURIString asXMLURI isRelative;
		deny: self fileURIWithHostString asXMLURI isRelative;
		deny: self fileURIString asXMLURI isRelative;
		assert: self fragmentURIString asXMLURI isRelative;
		deny: self fullURIString asXMLURI isRelative;
		deny: self fullURIWithPortString asXMLURI isRelative;
		assert: self queryURIString asXMLURI isRelative;
		assert: self relative asXMLURI isRelative;
		assert: self relativeAbsoluteCombined asXMLURI isRelative;
		assert: self schemelessURIString asXMLURI isRelative;
		assert: self schemelessURIWithPortString asXMLURI isRelative
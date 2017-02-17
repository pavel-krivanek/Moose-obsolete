tests
testHasPath
	self
		deny: '' asXMLURI hasPath;
		assert: '/' asXMLURI hasPath;
		assert: self absolute asXMLURI hasPath;
		assert: self absoluteDir asXMLURI hasPath;
		assert: self absoluteDirRelativeCombined asXMLURI hasPath;
		assert: self absoluteRelativeCombined asXMLURI hasPath;
		deny: self domainURIString asXMLURI hasPath;
		deny: self domainURIWithPortString asXMLURI hasPath;
		deny: self emailURIString asXMLURI hasPath;
		assert: self fileURIWithHostString asXMLURI hasPath;
		assert: self fileURIString asXMLURI hasPath;
		deny: self fragmentURIString asXMLURI hasPath;
		assert: self fullURIString asXMLURI hasPath;
		assert: self fullURIWithPortString asXMLURI hasPath;
		deny: self queryURIString asXMLURI hasPath;
		assert: self relative asXMLURI hasPath;
		assert: self relativeAbsoluteCombined asXMLURI hasPath;
		assert: self schemelessURIString asXMLURI hasPath;
		assert: self schemelessURIWithPortString asXMLURI hasPath
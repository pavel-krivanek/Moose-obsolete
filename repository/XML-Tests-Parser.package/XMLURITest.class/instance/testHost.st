tests
testHost
	self
		assert: '' asXMLURI host = '';
		assert: '/' asXMLURI host = '';
		assert: self absolute asXMLURI host = '';
		assert: self absoluteDir asXMLURI host = '';
		assert: self absoluteDirRelativeCombined asXMLURI host = '';
		assert: self absoluteRelativeCombined asXMLURI host = '';
		assert: self domainURIString asXMLURI host = self host;
		assert: self domainURIWithPortString asXMLURI host = self host;
		assert: self emailURIString asXMLURI host = self host;
		assert: self fileURIWithHostString asXMLURI host = self host;
		assert: self fileURIString asXMLURI host = '';
		assert: self fragmentURIString asXMLURI host = '';
		assert: self fullURIString asXMLURI host = self host;
		assert: self fullURIWithPortString asXMLURI host = self host;
		assert: self queryURIString asXMLURI host = '';
		assert: self relative asXMLURI host = '';
		assert: self relativeAbsoluteCombined asXMLURI host = '';
		assert: self schemelessURIString asXMLURI host = self host;
		assert: self schemelessURIWithPortString asXMLURI host = self host
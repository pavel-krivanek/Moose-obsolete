tests
testPath
	self
		assert: '' asXMLURI path = '';
		assert: '/' asXMLURI path = '/';
		assert: self absolute asXMLURI path = self absolute;
		assert: self absoluteDir asXMLURI path = self absoluteDir;
		assert: self absoluteDirRelativeCombined asXMLURI path = self absoluteDirRelativeCombined;
		assert: self absoluteRelativeCombined asXMLURI path = self absoluteRelativeCombined;
		assert: self domainURIString asXMLURI path = '';
		assert: self domainURIWithPortString asXMLURI path = '';
		assert: self emailURIString asXMLURI path = '';
		assert: self fileURIWithHostString asXMLURI path = self absolute;
		assert: self fileURIString asXMLURI path = self absolute;
		assert: self fragmentURIString asXMLURI path = '';
		assert: self fullURIString asXMLURI path = self absolute;
		assert: self fullURIWithPortString asXMLURI path = self absolute;
		assert: self queryURIString asXMLURI path = '';
		assert: self relative asXMLURI path = self relative;
		assert: self relativeAbsoluteCombined asXMLURI path = self relativeAbsoluteCombined;
		assert: self schemelessURIString asXMLURI path = self absolute;
		assert: self schemelessURIWithPortString asXMLURI path = self absolute
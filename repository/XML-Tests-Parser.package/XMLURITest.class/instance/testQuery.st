tests
testQuery
	self
		assert: '' asXMLURI query isEmpty;
		assert: '/' asXMLURI query isEmpty;
		assert: self absolute asXMLURI query isEmpty;
		assert: self absoluteDir asXMLURI query isEmpty;
		assert: self absoluteDirRelativeCombined asXMLURI query isEmpty;
		assert: self absoluteRelativeCombined asXMLURI query isEmpty;
		assert: self domainURIString asXMLURI query isEmpty;
		assert: self domainURIWithPortString asXMLURI query isEmpty;
		assert: self emailURIString asXMLURI query isEmpty;
		assert: self fileURIWithHostString asXMLURI query isEmpty;
		assert: self fileURIString asXMLURI query isEmpty;
		assert: self fragmentURIString asXMLURI query isEmpty;
		assert: self fullURIString asXMLURI query = self query;
		assert: self fullURIWithPortString asXMLURI query = self query;
		assert: self queryURIString asXMLURI query = self query;
		assert: self relative asXMLURI query isEmpty;
		assert: self relativeAbsoluteCombined asXMLURI query isEmpty;
		assert: self schemelessURIString asXMLURI query = self query;
		assert: self schemelessURIWithPortString asXMLURI query = self query
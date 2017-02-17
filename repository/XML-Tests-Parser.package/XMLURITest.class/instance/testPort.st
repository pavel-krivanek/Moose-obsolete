tests
testPort
	self
		assert: '' asXMLURI port isNil;
		assert: '/' asXMLURI port isNil;
		assert: self absolute asXMLURI port isNil;
		assert: self absoluteDir asXMLURI port isNil;
		assert: self absoluteDirRelativeCombined asXMLURI port isNil;
		assert: self absoluteRelativeCombined asXMLURI port isNil;
		assert: self domainURIString asXMLURI port isNil;
		assert: self domainURIWithPortString asXMLURI port = 80;
		assert: self emailURIString asXMLURI port isNil;
		assert: self fileURIWithHostString asXMLURI port isNil;
		assert: self fileURIString asXMLURI port isNil;
		assert: self fragmentURIString asXMLURI port isNil;
		assert: self fullURIString asXMLURI port isNil;
		assert: self fullURIWithPortString asXMLURI port = 80;
		assert: self queryURIString asXMLURI port isNil;
		assert: self relative asXMLURI port isNil;
		assert: self relativeAbsoluteCombined asXMLURI port isNil;
		assert: self schemelessURIString asXMLURI port isNil;
		assert: self schemelessURIWithPortString asXMLURI port = 80
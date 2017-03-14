tests
testHasNonDirectoryPath
	self
		deny: '' asXMLURI hasNonDirectoryPath;
		deny: '/' asXMLURI hasNonDirectoryPath;
		assert: self absolute asXMLURI hasNonDirectoryPath;
		deny: self absoluteDir asXMLURI hasNonDirectoryPath;
		assert: self absoluteDirRelativeCombined asXMLURI hasNonDirectoryPath;
		assert: self absoluteRelativeCombined asXMLURI hasNonDirectoryPath;
		deny: self domainURIString asXMLURI hasNonDirectoryPath;
		deny: self domainURIWithPortString asXMLURI hasNonDirectoryPath;
		deny: self emailURIString asXMLURI hasNonDirectoryPath;
		assert: self fileURIWithHostString asXMLURI hasNonDirectoryPath;
		assert: self fileURIString asXMLURI hasNonDirectoryPath;
		deny: self fragmentURIString asXMLURI hasNonDirectoryPath;
		assert: self fullURIString asXMLURI hasNonDirectoryPath;
		assert: self fullURIWithPortString asXMLURI hasNonDirectoryPath;
		deny: self queryURIString asXMLURI hasNonDirectoryPath;
		assert: self relative asXMLURI hasNonDirectoryPath;
		assert: self relativeAbsoluteCombined asXMLURI hasNonDirectoryPath;
		assert: self schemelessURIString asXMLURI hasNonDirectoryPath;
		assert: self schemelessURIWithPortString asXMLURI hasNonDirectoryPath
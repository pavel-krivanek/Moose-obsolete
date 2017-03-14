tests
testHasDirectoryPath
	self
		deny: '' asXMLURI hasDirectoryPath;
		assert: '/' asXMLURI hasDirectoryPath;
		deny: self absolute asXMLURI hasDirectoryPath;
		assert: self absoluteDir asXMLURI hasDirectoryPath;
		deny: self absoluteDirRelativeCombined asXMLURI hasDirectoryPath;
		deny: self absoluteRelativeCombined asXMLURI hasDirectoryPath;
		deny: self domainURIString asXMLURI hasDirectoryPath;
		deny: self domainURIWithPortString asXMLURI hasDirectoryPath;
		deny: self emailURIString asXMLURI hasDirectoryPath;
		deny: self fileURIWithHostString asXMLURI hasDirectoryPath;
		deny: self fileURIString asXMLURI hasDirectoryPath;
		deny: self fragmentURIString asXMLURI hasDirectoryPath;
		deny: self fullURIString asXMLURI hasDirectoryPath;
		deny: self fullURIWithPortString asXMLURI hasDirectoryPath;
		deny: self queryURIString asXMLURI hasDirectoryPath;
		deny: self relative asXMLURI hasDirectoryPath;
		deny: self relativeAbsoluteCombined asXMLURI hasDirectoryPath;
		deny: self schemelessURIString asXMLURI hasDirectoryPath;
		deny: self schemelessURIWithPortString asXMLURI hasDirectoryPath
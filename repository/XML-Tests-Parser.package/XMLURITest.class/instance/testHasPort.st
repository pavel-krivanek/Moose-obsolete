tests
testHasPort
	self
		deny: '' asXMLURI hasPort;
		deny: '/' asXMLURI hasPort;
		deny: self absolute asXMLURI hasPort;
		deny: self absoluteDir asXMLURI hasPort;
		deny: self absoluteDirRelativeCombined asXMLURI hasPort;
		deny: self absoluteRelativeCombined asXMLURI hasPort;
		deny: self domainURIString asXMLURI hasPort;
		assert: self domainURIWithPortString asXMLURI hasPort;
		deny: self emailURIString asXMLURI hasPort;
		deny: self fileURIWithHostString asXMLURI hasPort;
		deny: self fileURIString asXMLURI hasPort;
		deny: self fragmentURIString asXMLURI hasPort;
		deny: self fullURIString asXMLURI hasPort;
		assert: self fullURIWithPortString asXMLURI hasPort;
		deny: self queryURIString asXMLURI hasPort;
		deny: self relative asXMLURI hasPort;
		deny: self relativeAbsoluteCombined asXMLURI hasPort;
		deny: self schemelessURIString asXMLURI hasPort;
		assert: self schemelessURIWithPortString asXMLURI hasPort
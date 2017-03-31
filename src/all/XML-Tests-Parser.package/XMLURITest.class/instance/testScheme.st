tests
testScheme
	self
		assert: '' asXMLURI scheme = '';
		assert: '/' asXMLURI scheme = '';
		assert: self absolute asXMLURI scheme = '';
		assert: self absoluteDir asXMLURI scheme = '';
		assert: self absoluteDirRelativeCombined asXMLURI scheme = '';
		assert: self absoluteRelativeCombined asXMLURI scheme = '';
		assert: self domainURIString asXMLURI scheme = 'http';
		assert: self domainURIWithPortString asXMLURI scheme = 'http';
		assert: self emailURIString asXMLURI scheme = 'mailto';
		assert: self fileURIWithHostString asXMLURI scheme = 'file';
		assert: self fileURIString asXMLURI scheme  = 'file';
		assert: self fragmentURIString asXMLURI scheme = '';
		assert: self fullURIString asXMLURI scheme = 'http';
		assert: self fullURIWithPortString asXMLURI scheme = 'http';
		assert: self queryURIString asXMLURI scheme = '';
		assert: self relative asXMLURI scheme = '';
		assert: self relativeAbsoluteCombined asXMLURI scheme = '';
		assert: self schemelessURIString asXMLURI scheme = '';
		assert: self schemelessURIWithPortString asXMLURI scheme = ''
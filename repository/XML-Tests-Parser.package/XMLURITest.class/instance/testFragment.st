tests
testFragment
	self
		assert: '' asXMLURI fragment = '';
		assert: '/' asXMLURI fragment = '';
		assert: self absolute asXMLURI fragment = '';
		assert: self absoluteDir asXMLURI fragment = '';
		assert: self absoluteDirRelativeCombined asXMLURI fragment = '';
		assert: self absoluteRelativeCombined asXMLURI fragment = '';
		assert: self domainURIString asXMLURI fragment = '';
		assert: self domainURIWithPortString asXMLURI fragment = '';
		assert: self emailURIString asXMLURI fragment = '';
		assert: self fileURIWithHostString asXMLURI fragment = '';
		assert: self fileURIString asXMLURI fragment = '';
		assert: self fragmentURIString asXMLURI fragment = self fragment;
		assert: self fullURIString asXMLURI fragment = self fragment;
		assert: self fullURIWithPortString asXMLURI fragment = self fragment;
		assert: self queryURIString asXMLURI fragment = '';
		assert: self relative asXMLURI fragment = '';
		assert: self relativeAbsoluteCombined asXMLURI fragment = '';
		assert: self schemelessURIString asXMLURI fragment = self fragment;
		assert: self schemelessURIWithPortString asXMLURI fragment = self fragment
tests
testPathSegments
	self
		assert: '' asXMLURI pathSegments isEmpty;
		assert: '/' asXMLURI pathSegments = #('' '') asOrderedCollection;
		assert: self absolute asXMLURI pathSegments = self absoluteSegments;
		assert: self absoluteDir asXMLURI pathSegments = self absoluteDirSegments;
		assert: self absoluteDirRelativeCombined asXMLURI pathSegments = self absoluteDirRelativeCombinedSegments;
		assert: self absoluteRelativeCombined asXMLURI pathSegments = self absoluteRelativeCombinedSegments;
		assert: self domainURIString asXMLURI pathSegments isEmpty;
		assert: self domainURIWithPortString asXMLURI pathSegments isEmpty;
		assert: self emailURIString asXMLURI pathSegments isEmpty;
		assert: self fileURIWithHostString asXMLURI pathSegments = self absoluteSegments;
		assert: self fileURIString asXMLURI pathSegments = self absoluteSegments;
		assert: self fragmentURIString asXMLURI pathSegments isEmpty;
		assert: self fullURIString asXMLURI pathSegments = self absoluteSegments;
		assert: self fullURIWithPortString asXMLURI pathSegments = self absoluteSegments;
		assert: self queryURIString asXMLURI pathSegments isEmpty;
		assert: self relative asXMLURI pathSegments = self relativeSegments;
		assert: self relativeAbsoluteCombined asXMLURI pathSegments = self relativeAbsoluteCombinedSegments;
		assert: self schemelessURIString asXMLURI pathSegments = self absoluteSegments;
		assert: self schemelessURIWithPortString asXMLURI pathSegments = self absoluteSegments
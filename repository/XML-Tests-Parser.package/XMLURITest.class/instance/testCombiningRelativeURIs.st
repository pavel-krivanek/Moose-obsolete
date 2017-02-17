tests
testCombiningRelativeURIs
	| domainURI domainURIWithPort absolutePathURI absoluteDirPathURI |

	domainURI := self domainURIString asXMLURI.
	domainURIWithPort := self domainURIWithPortString asXMLURI.
	absolutePathURI := (self domainURIString , self absolute) asXMLURI.
	absoluteDirPathURI := (self domainURIString , self absoluteDir) asXMLURI.
	self
		assert: domainURI / self relative = (self domainURIString , '/' , self relative) asXMLURI;
		assert: domainURI / self absolute = (self domainURIString , self absolute) asXMLURI;
		assert: domainURI / self absoluteDir = (self domainURIString , self absoluteDir) asXMLURI;
		assert: domainURIWithPort / self relative = (self domainURIWithPortString , '/' , self relative) asXMLURI;
		assert: domainURIWithPort / self absolute = (self domainURIWithPortString , self absolute) asXMLURI;
		assert: domainURIWithPort / self absoluteDir = (self domainURIWithPortString , self absoluteDir) asXMLURI;
		assert: absolutePathURI / self relative = (self domainURIString , self absoluteRelativeCombined) asXMLURI;
		assert: absoluteDirPathURI / self relative = (self domainURIString , self absoluteDirRelativeCombined) asXMLURI;
		assert: absolutePathURI / self queryURIString = (self domainURIString , self absolute , self queryURIString) asXMLURI;
		assert: absolutePathURI / self fragmentURIString = (self domainURIString , self absolute , self fragmentURIString) asXMLURI;
		assert: domainURI / self schemelessURIString = self fullURIString asXMLURI.
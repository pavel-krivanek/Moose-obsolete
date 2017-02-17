tests
testCombiningDotPathURIs
	| relativePathURI absolutePathURI fullURI |

	relativePathURI := self relative asXMLURI.
	self
		assert: relativePathURI / '.' = 'relative/' asXMLURI;
		assert: relativePathURI / './.' = 'relative/' asXMLURI;
		assert: relativePathURI / './path' = relativePathURI;
		assert: relativePathURI / ('.' , self absolute) = self relativeAbsoluteCombined asXMLURI.

	absolutePathURI := self absolute asXMLURI.
	self
		assert: absolutePathURI / '.' = '/absolute/' asXMLURI;
		assert: absolutePathURI / './.' = '/absolute/' asXMLURI;
		assert: absolutePathURI / './path' = absolutePathURI;
		assert: absolutePathURI / ('./' , self relative) = self absoluteRelativeCombined asXMLURI.

	fullURI := self fullURIString asXMLURI.
	self
		assert: fullURI / '.' = (self domainURIString , '/absolute/') asXMLURI;
		assert: fullURI / './.' = (self domainURIString , '/absolute/') asXMLURI;
		assert: fullURI / './path' = (self domainURIString , self absolute) asXMLURI;
		assert: fullURI / ('./' , self relative) = (self domainURIString , self absoluteRelativeCombined) asXMLURI.
tests
testCombiningDoubleDotPathURIs
	| relativePathURI absolutePathURI fullURI |

	relativePathURI := self relative asXMLURI.
	self
		assert: (relativePathURI / '..') isEmpty;
		assert: (relativePathURI / '../..') isEmpty;
		assert: relativePathURI / ('..' , self absolute) = 'absolute/path' asXMLURI;
		assert: relativePathURI / ('../..' , self absolute) = 'absolute/path' asXMLURI;
		assert: relativePathURI / ('../..' , self absolute , '/..') = 'absolute/' asXMLURI;
		assert: (relativePathURI / ('../..' , self absolute , '/../..')) isEmpty.

	absolutePathURI := self absolute asXMLURI.
	self
		assert: (absolutePathURI / '..') hasRootPath;
		assert: (absolutePathURI / '../..') isEmpty;
		assert: absolutePathURI / ('..' , self absolute) = absolutePathURI;
		assert: absolutePathURI / ('../..' , self absolute) = 'absolute/path' asXMLURI;
		assert: absolutePathURI / ('../..' , self absolute , '/..') = 'absolute/' asXMLURI;
		assert: (absolutePathURI / ('../..' , self absolute , '/../..')) isEmpty.

	fullURI := self fullURIString asXMLURI.
	self
		assert: (fullURI / '..') hasRootPath;
		deny: (fullURI / '../..') hasPath;
		assert: fullURI / ('..' , self absolute) = (self domainURIString , self absolute) asXMLURI;
		assert: fullURI / ('../..' , self absolute) = (self domainURIString , self absolute) asXMLURI;
		assert: fullURI / ('../..' , self absolute , '/..') = (self domainURIString , '/absolute/') asXMLURI;
		assert: fullURI / ('../..' , self absolute , '/../') = (self domainURIString , '/absolute/') asXMLURI.
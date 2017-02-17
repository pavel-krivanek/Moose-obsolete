tests
testStringLengthFunction
	self
		assert: 'string-length("test")' asXPath evaluate = 4;
		assert: 'string-length(false())' asXPath evaluate = 5;
		assert: ('string-length()' asXPath in: 'string-value' asXMLStringNode) = 12
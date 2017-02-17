tests
testAsXPathNumber
	self
		assert: '1.5' asXPathNumber = 1.5;
		assert: ' -1.5 ' asXPathNumber = -1.5;
		assert: '21.25' asXPathNumber = 21.25;
		assert: ' -21.25 ' asXPathNumber = -21.25;
		assert: '321.325' asXPathNumber = 321.325;
		assert: ' -321.325 ' asXPathNumber = -321.325;
		assert: ' 	0.0 ' asXPathNumber isXPathPositiveZero;
		assert: '  -0.0   ' asXPathNumber isXPathNegativeZero;
		assert: '  .1  ' asXPathNumber = 0.1;
		assert: '  1. ' asXPathNumber = 1;
		assert: '  -.1  ' asXPathNumber = -0.1;
		assert: '  -1. ' asXPathNumber = -1;
		assert: '  .  ' asXPathNumber isNaN;
		assert: '   ' asXPathNumber isNaN.
tests
testNumberTokenizing
	self
		assert: ' 1 ' asXPath evaluate = 1;
		assert: ' 12 ' asXPath evaluate = 12;
		assert: ' 1.5 ' asXPath evaluate = 1.5;
		assert: ' 12.5 ' asXPath evaluate = 12.5;
		assert: ' -1 ' asXPath evaluate = -1;
		assert: ' -12 ' asXPath evaluate = -12;
		assert: ' -1.5 ' asXPath evaluate = -1.5;
		assert: ' -12.5 ' asXPath evaluate = -12.5;
		assert: ' .1 ' asXPath evaluate = 0.1;
		assert: ' .12 ' asXPath evaluate = 0.12;
		assert: ' -.1 ' asXPath evaluate = -0.1;
		assert: ' -.12 ' asXPath evaluate = -0.12
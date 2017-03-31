tests
testSubstringAfterFunction
	self
		assert: 'substring-after("onetwothree", "one")' asXPath evaluate = 'twothree';
		assert: 'substring-after("onetwothree", ''two'')' asXPath evaluate = 'three';
		assert: 'substring-after("onetwothree", "three")' asXPath evaluate isEmpty;
		assert: 'substring-after("onetwothree", "four")' asXPath evaluate isEmpty
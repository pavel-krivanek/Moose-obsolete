tests
testSubstringBeforeFunction
	self
		assert: 'substring-before("onetwothree", "one")' asXPath evaluate isEmpty;
		assert: 'substring-before("onetwothree", ''two'')' asXPath evaluate = 'one';
		assert: 'substring-before("onetwothree", "three")' asXPath evaluate = 'onetwo';
		assert: 'substring-before("onetwothree", "four")' asXPath evaluate isEmpty
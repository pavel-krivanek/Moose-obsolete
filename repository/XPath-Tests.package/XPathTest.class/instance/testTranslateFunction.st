tests
testTranslateFunction
	self
		assert: 'translate("onetwothree", "oe", "O")' asXPath evaluate = 'OntwOthr';
		assert: 'translate("onetwothree", "oe", "OEN")' asXPath evaluate = 'OnEtwOthrEE';
		assert: 'translate("onetwothree", "z", "x")' asXPath evaluate = 'onetwothree'.

	"from the spec"
	self
		assert: 'translate("bar","abc","ABC")' asXPath evaluate = 'BAr';
		assert: 'translate("--aaa--","abc-","ABC")' asXPath evaluate = 'AAA'.
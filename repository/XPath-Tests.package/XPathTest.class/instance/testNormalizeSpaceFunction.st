tests
testNormalizeSpaceFunction
	self assert:
		'normalize-space("
		    one		  
		    two
		    three
		")' asXPath evaluate = 'one two three'.
	self assert: 'normalize-space(" 	")' asXPath evaluate isEmpty.
tests
testNormalizeSpaceFunction
	self assert:
		'normalize-space("
		    one		  
		    two
		    three
		")' asXPath evaluate = 'one two three'.
	self assert: 'normalize-space(" 	")' asXPath evaluate = ''.

	"if the argument is omitted, use a node set with the context node"
	self assert:
		('normalize-space()' asXPath in:
			'<test>
			    one		  
			    two
			    three
			</test>' parseXML) = 'one two three'.
	self assert:
		('normalize-space()' asXPath in: '<test> 	</test>' parseXML) = ''.

	self
		should: ['normalize-space("one","two three")' asXPath evaluate]
		raise: XPathArgumentNumberException.
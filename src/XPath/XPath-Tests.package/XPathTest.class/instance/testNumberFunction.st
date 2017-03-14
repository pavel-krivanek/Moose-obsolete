tests
testNumberFunction
	self
		assert: 'number("123")' asXPath evaluate = 123;
		assert: 'number(123)' asXPath evaluate = 123;
		assert: 'number(true())' asXPath evaluate = 1;
		assert: 'number(false())' asXPath evaluate = 0.

	"if the argument is omitted, use a node set with the context node"
	self assert:
		('number()' asXPath in: '<test>123</test>' parseXML) = 123.

	self
		should: ['number(1, 23)' asXPath evaluate]
		raise: XPathArgumentNumberException.

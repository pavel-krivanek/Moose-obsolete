tests
testLangFunction
	| element |

	(element := XMLElement named: 'test')
		attributeAt: 'xml:lang' put: 'en-us'.
	self
		assert: ('lang("En")' asXPath in: element);
		assert: ('lang("en-US")' asXPath in: element);
		deny: ('lang("en-UK")' asXPath in: element);
		deny: ('lang("DE")' asXPath in: element).

	element attributeAt: 'xml:lang' put: 'En'.
	self
		assert: ('lang("En")' asXPath in: element);
		deny: ('lang("en-US")' asXPath in: element);
		deny: ('lang("en-UK")' asXPath in: element);
		deny: ('lang("DE")' asXPath in: element).
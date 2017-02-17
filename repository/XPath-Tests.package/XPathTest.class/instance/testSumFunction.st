tests
testSumFunction
	self assert:
		('<nums><one>1</one><two>2</two><three>3</three></nums>' parseXML
			xPath: 'sum(/nums/*)') = 6.
	self
		should: ['sum()' asXPath evaluate]
		raise: XPathArgumentNumberException.
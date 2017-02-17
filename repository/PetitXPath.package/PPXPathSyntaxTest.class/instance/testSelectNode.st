tests
testSelectNode
	| result |
	
	result := xml findXPath: 'bookstore'.
	
	self assert: result notNil.
	self assert: result name localName = 'bookstore'.
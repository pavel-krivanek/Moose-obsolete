tests
testSelectIndexNode
	| result |
	
	result := xml findXPath: 'bookstore/book[2]'.
	
	self assert: result notNil.
	self assert: result name localName = 'book'.
	
	result := xml findXPath: 'bookstore/book[2]/title[2]'.
	
	self assert: result name localName = 'title'.
	self assert: result contentText = 'Aprendiendo XML'.

tests
testSelectInnerNode
	| result |
	
	result := xml findXPath: 'bookstore/book'.
	
	self assert: result notNil.
	self assert: result isCollection.
	self assert: result size = 2.
	self assert: result first name localName = 'book'.
	self assert: result second name localName = 'book'.
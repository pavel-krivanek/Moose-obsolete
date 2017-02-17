tests
testSelectDeepInnerNode
	| result |
	
	result := xml findXPath: 'bookstore/book/price'.
	
	self assert: result notNil.
	self assert: result isCollection.
	self assert: result size = 2.
	self assert: result first name localName = 'price'.
	self assert: result first contentText = '29.99'.
	self assert: result second name localName = 'price'.
	self assert: result second contentText = '39.95'.
	
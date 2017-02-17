tests
testAttributeNotFound
	| result |
	
	result := xml findXPath: 'bookstore/book/title[ @doesNotExist ]'.
	self assert: result isNil.
	
	result := xml findXPath: 'bookstore/book/title[ @lang = "doesNotExist" ]'.
	self assert: result isNil.
	
tests
testNodeNotFound
	| result |
	
	result := xml findXPath: '/DoesNotExists'.
	self assert: result isNil.
	
	result := xml findXPath: 'bookstore/DoesNotExists'.
	self assert: result isNil.	
	
	result := xml findXPath: 'bookstore/book/DoesNotExists'.
	self assert: result isNil.
	
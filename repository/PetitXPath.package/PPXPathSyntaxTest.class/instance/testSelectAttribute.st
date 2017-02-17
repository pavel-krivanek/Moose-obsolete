tests
testSelectAttribute
	| result |
	
	result := xml findXPath: 'bookstore/book/title[ @lang="eng" ]'.
	
	self assert: result notNil.
	self assert: result size = 2.
	self assert: result first name localName = 'title'.
	self assert: result first contentText = 'Harry Potter'.
	self assert: result second name localName = 'title'.
	self assert: result second contentText = 'Learning XML'.
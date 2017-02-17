tests
testSelectPresentAttribute
	| result |
	
	result := xml findXPath: 'bookstore/book/title[@lang]'.
	
	self assert: result notNil.
	self assert: result isCollection.
	self assert: result size = 3.
	self assert: result first name localName = 'title'.
	self assert: (result first attributeAt: 'lang') = 'eng'.
	self assert: result first contentText = 'Harry Potter'.
	self assert: result second name localName = 'title'.
	self assert: (result second attributeAt: 'lang') = 'eng'.
	self assert: result second contentText = 'Learning XML'.	
	self assert: result third name localName = 'title'.
	self assert: (result third attributeAt: 'lang') = 'esp'.
	self assert: result third contentText = 'Aprendiendo XML'.	
	
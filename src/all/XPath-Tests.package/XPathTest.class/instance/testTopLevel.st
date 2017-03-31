tests
testTopLevel
	| path results elem |
	path := XPath for: 'addressbook'.
	results := path in: document.
	
	self assert: results size = 1.
	
	elem := results first.
	self assert: elem isElement.
	self assert: elem name = 'addressbook'.
	self assert: elem elements size = 4.
	self assert: elem elements first isElement.
	self assert: elem elements first name = 'person'.
	self assert: elem elements last name = 'person'.	
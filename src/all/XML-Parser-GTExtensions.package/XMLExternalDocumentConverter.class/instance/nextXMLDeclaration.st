private 
nextXMLDeclaration
	self skipSeparators.
	(self expectNextAll: '<?xml')
		ifNil: [^ self].

	self skipSeparators.
	(self nextXMLAttributeNamed: 'version')
		ifNil: [^ self].

	self skipSeparators.
	(self nextXMLAttributeNamed: 'encoding')
		ifNotNil: [:encodingName | streamReader convertFromEncoding: encodingName].
tests
testWriteXMLOn
	self assert: self newNamespaceNode printString = 'xmlns:prefix="prefixNS"'.
	self assert:
		(self nodeClass withXMLNamespaceOnElement: nil) printString =
			('xmlns:xml="', XMLNamespaceScope xmlNamespaceURI, '"').
	self assert:
		(self nodeClass
			element: nil
			name: ''
			uri: 'defaultNS') printString = 'xmlns="defaultNS"'.
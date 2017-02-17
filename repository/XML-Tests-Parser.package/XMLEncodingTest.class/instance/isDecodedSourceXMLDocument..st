testing
isDecodedSourceXMLDocument: aDocument
	aDocument nodes size = 1
		ifFalse: [^ false].
	(aDocument firstNode isElementNamed: 'encoding-test')
		ifFalse: [^ false].
	aDocument firstNode nodes size = 1
		ifFalse: [^ false].
	^ aDocument firstNode firstNode isStringNode: 'encoding test'.
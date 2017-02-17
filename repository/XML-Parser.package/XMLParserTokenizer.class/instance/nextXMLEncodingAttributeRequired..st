tokenizing
nextXMLEncodingAttributeRequired: aBoolean
	(aBoolean or: [streamReader peek == $e])
		ifTrue: [	
			^ self
				nextXMLAttributeName: 'encoding';
				nextXMLEncodingAttributeValue]
		ifFalse: [^ '']
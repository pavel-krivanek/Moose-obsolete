tokenizing
nextXMLVersionAttributeRequired: aBoolean
	(aBoolean or: [streamReader peek == $v])
		ifTrue: [
			^ self
				nextXMLAttributeName: 'version';
				nextXMLVersionAttributeValue]
		ifFalse: [^ '']
accessing
badNameAttributeListValues
	^ self badNameAttributeValues reject: [:badNameAttributeValue |
		badNameAttributeValue allSatisfy: [:each | each isXMLWhitespace]]
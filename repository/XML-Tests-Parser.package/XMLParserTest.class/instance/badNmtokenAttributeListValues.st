accessing
badNmtokenAttributeListValues
	^ self badNmtokenAttributeValues reject: [:badNmtokenAttributeValue |
		badNmtokenAttributeValue allSatisfy: [:each | each isXMLWhitespace]]
evaluating
value: aNode
	^ aNode isAttribute
		and: [aNode localName = self localName
			and: [aNode namespaceURI = self namespaceURI]]
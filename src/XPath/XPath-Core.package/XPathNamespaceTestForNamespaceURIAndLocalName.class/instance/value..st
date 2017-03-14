evaluating
value: aNode
	^ aNode isNamespace
		and: [aNode localName = self localName
			and: [aNode namespaceURI = self namespaceURI]]
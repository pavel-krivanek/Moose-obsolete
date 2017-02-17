evaluating
value: aNode
	^ aNode isElement
		and: [aNode localName = self localName
			and: [aNode namespaceURI = self namespaceURI]]
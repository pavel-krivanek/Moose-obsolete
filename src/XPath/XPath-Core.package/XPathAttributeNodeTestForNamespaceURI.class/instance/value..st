evaluating
value: aNode
	^ aNode isAttribute
		and: [aNode namespaceURI = self namespaceURI]
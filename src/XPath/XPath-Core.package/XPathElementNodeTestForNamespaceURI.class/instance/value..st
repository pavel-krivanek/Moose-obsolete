evaluating
value: aNode
	^ aNode isElement
		and: [aNode namespaceURI = self namespaceURI]
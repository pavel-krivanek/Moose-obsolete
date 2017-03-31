evaluating
value: aNode
	^ aNode isNamespace
		and: [aNode namespaceURI = self namespaceURI]
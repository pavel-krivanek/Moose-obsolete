evaluating
value: aNode
	^ aNode isNamespace
		and: [aNode localName = self localName]
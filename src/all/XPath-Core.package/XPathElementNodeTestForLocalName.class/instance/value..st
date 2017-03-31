evaluating
value: aNode
	^ aNode isElement
		and: [aNode localName = self localName]
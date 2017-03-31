evaluating
value: aNode
	^ aNode isElement
		and: [aNode name = self name]
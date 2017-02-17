evaluating
value: aNode
	^ aNode isAttribute
		and: [aNode name = self name]
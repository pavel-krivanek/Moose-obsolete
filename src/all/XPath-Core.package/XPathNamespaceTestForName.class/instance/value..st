evaluating
value: aNode
	^ aNode isNamespace
		and: [aNode name = self name]
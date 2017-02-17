evaluating
value: aNode
	^ aNode isPI
		and: [aNode target = self name]
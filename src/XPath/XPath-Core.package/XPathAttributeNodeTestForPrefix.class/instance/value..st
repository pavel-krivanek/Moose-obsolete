evaluating
value: aNode
	^ aNode isAttribute
		and: [aNode prefix = self prefix]
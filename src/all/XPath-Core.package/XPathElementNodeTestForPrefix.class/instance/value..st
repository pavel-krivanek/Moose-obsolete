evaluating
value: aNode
	^ aNode isElement
		and: [aNode prefix = self prefix]
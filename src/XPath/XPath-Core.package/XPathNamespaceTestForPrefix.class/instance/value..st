evaluating
value: aNode
	^ aNode isNamespace
		and: [aNode prefix = self prefix]
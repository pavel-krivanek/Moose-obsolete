enumerating
stringNodesDo: aBlock
	self do: [:each |
		each isStringNode
			ifTrue: [aBlock value: each]]
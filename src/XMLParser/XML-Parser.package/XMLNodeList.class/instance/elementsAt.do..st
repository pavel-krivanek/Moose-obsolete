enumerating
elementsAt: aName do: aBlock
	self elementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]
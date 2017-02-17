enumerating
contentNodesDo: aBlock
	self do: [:each |
		each isContentNode
			ifTrue: [aBlock value: each]]
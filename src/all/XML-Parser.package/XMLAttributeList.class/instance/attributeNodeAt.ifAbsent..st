accessing
attributeNodeAt: aName ifAbsent: aBlock
	self do: [:each |
		(each isNamed: aName)
			ifTrue: [^ each]].
	^ aBlock value.
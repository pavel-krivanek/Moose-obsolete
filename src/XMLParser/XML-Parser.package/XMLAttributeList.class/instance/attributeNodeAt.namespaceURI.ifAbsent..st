accessing
attributeNodeAt: aName namespaceURI: aURI ifAbsent: aBlock
	self do: [:each |
		((each isNamed: aName)
			and: [each namespaceURI = aURI])
			ifTrue: [^ each]].
	^ aBlock value.
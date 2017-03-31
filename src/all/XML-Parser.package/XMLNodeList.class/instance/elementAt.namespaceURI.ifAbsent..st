accessing
elementAt: aName namespaceURI: aURI ifAbsent: aBlock
	self
		elementsAt: aName
		do: [:each |
			each namespaceURI = aURI
				ifTrue: [^ each]].
	^ aBlock value.
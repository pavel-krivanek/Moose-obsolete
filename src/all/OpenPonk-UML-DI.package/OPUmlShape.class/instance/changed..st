Roassal2 - updating
changed: aParameter
	self owningElement
		ifNil: [ self update: aParameter ]
		ifNotNil: [ self owningElement changed: aParameter ]
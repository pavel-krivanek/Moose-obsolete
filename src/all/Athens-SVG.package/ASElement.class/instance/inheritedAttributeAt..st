attribute management
inheritedAttributeAt: name
	^ attributes at: name ifAbsent: [ parent
		ifNil: [ self error: 'Attribute ', name asString, ' not found.' ]
		ifNotNil: [ parent inheritedAttributeAt: name ] ]
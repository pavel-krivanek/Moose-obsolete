attribute management
inheritedAttributeAt: name ifAbsent: aBlock

	^ attributes at: name ifAbsent: [ parent
		ifNil: [ aBlock value ]
		ifNotNil: [ parent inheritedAttributeAt: name ifAbsent: aBlock ] ]
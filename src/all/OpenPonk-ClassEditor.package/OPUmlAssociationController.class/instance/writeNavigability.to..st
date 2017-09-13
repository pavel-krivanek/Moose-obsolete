writing
writeNavigability: isNavigable to: aProperty
	isNavigable
		ifTrue: [ aProperty owningClass: aProperty opposite type.
			aProperty owningAssociation: nil ]
		ifFalse: [ aProperty owningClass: nil.
			aProperty owningAssociation: aProperty association ]
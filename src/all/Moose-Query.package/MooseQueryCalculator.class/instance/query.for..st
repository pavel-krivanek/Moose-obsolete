query
query: aFAMIXClassAssociation for: anEntity
	^ self strategy
		queryResultOn: anEntity
		with: (self query: aFAMIXClassAssociation for: anEntity in: OrderedCollection new) asSet
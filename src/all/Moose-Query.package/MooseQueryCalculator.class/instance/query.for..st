query
query: aFAMIXClassAssociation for: anEntity
	^ self strategy
		queryResultOn: anEntity
		with: (self privateQuery: aFAMIXClassAssociation for: anEntity in: OrderedCollection new)
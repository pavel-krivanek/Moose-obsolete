query
queryLocal: aFAMIXClassAssociation for: anEntity

	^ self strategy queryResultOn: anEntity with: (self queryLocal: aFAMIXClassAssociation for: anEntity in: OrderedCollection new) asSet
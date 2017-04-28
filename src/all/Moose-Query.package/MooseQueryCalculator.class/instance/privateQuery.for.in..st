query
privateQuery: aFAMIXClassAssociation for: anEntity in: aCollection
	self queryLocal: aFAMIXClassAssociation for: anEntity in: aCollection.
	anEntity childrenSelectors do: [ :anAccessor | (anEntity perform: anAccessor) ifNotNil: [ :res | res asCollection do: [ :child | self privateQuery: aFAMIXClassAssociation for: child in: aCollection ] ] ].
	^ aCollection
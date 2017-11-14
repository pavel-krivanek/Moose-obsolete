query
query: aFAMIXClassAssociation for: anEntity in: aCollection
	"I know that we could use #do: here, but this algo takes too long on big model, so this is a speed up while the sista vm is not ready for production"

	| selectors |
	self queryLocal: aFAMIXClassAssociation for: anEntity in: aCollection.
	1 to: (selectors := anEntity childrenSelectors) size do: [ :index | 
		(anEntity perform: (selectors at: index))
			ifNotNil: [ :children | 
				| coll |
				1 to: (coll := children asCollection) size do: [ :i | self query: aFAMIXClassAssociation for: (coll at: i) in: aCollection ] ] ].
	^ aCollection
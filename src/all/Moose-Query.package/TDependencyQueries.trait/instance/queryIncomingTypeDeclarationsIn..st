moosequery-queries-incoming
queryIncomingTypeDeclarationsIn: aCollection
	"This method could be more readable but it needs to be really performant"

	| selectors |
	1 to: (selectors := self childrenSelectors) size do: [ :index | 
		(self perform: (selectors at: index))
			ifNotNil: [ :children | 
				| coll |
				1 to: (coll := children asCollection) size do: [ :i | (coll at: i) queryIncomingTypeDeclarationsIn: aCollection ] ] ].
	aCollection addAll: self incomingTypeDeclarations.
	^ aCollection
query
queryAllFor: anEntity in: aCollection
	| selectors |
	self queryAllLocalFor: anEntity in: aCollection.
	"Instead of #to:do: we could just use #do: but this implementation is much faster. Maybe sista will remove the needs of the todo later."
	1 to: (selectors := anEntity childrenSelectors) size do: [ :index | 
		(anEntity perform: (selectors at: index))
			ifNotNil: [ :children | 
				| coll |
				1 to: (coll := children asCollection) size do: [ :i | self queryAllFor: (coll at: i) in: aCollection ] ] ].
	^ aCollection
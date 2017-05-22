accessing
childrenEntities
	| res |
	res := OrderedCollection new.
	self childrenSelectors
		do: [ :accessor | (self perform: accessor) ifNotNil: [ :r | res addAll: r asCollection ] ].
	^ res
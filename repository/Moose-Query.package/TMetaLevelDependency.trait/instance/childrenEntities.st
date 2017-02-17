accessing
childrenEntities
	^ (self childrenSelectors
		collect: [ :accessor | self perform: accessor ]) flattened reject: #isNil.
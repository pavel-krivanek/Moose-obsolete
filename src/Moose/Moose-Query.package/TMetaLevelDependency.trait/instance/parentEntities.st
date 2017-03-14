accessing
parentEntities
	^ self parentSelectors
		collect: [ :accessor | self perform: accessor ]
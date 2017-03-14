adding
addAllFirst: aCollection
	aCollection reverseDo: [:each | self addFirst: each].
	^ aCollection.
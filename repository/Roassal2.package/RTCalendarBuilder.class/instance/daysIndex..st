accessing - computed
daysIndex: aCollection
	^ (aCollection collect: [ :d | d dayOfWeek ]) asSet asSortedCollection.
configuring
on: anObject startWithAll: aCollection
	super on: anObject startWithAll: aCollection.

	edgesToAction := IdentityDictionary new: self expectedSize. " track edges until they are allowed to be consumed "
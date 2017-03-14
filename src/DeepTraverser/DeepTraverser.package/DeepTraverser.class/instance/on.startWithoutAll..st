configuring
on: anObect startWithoutAll: aCollection
	super on: anObect startWithoutAll: aCollection.

	edgesToAction := IdentityDictionary new: self expectedSize. " track edges until they are allowed to be consumed "

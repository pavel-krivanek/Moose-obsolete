configuring
on: anObject1 startWithout: anObject2
	super on: anObject1 startWithout: anObject2.

	edgesToAction := IdentityDictionary new: self expectedSize. " track edges until they are allowed to be consumed "

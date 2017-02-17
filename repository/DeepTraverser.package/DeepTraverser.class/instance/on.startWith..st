configuring
on: anObject1 startWith: anObject2
	super on: anObject1 startWith: anObject2.

	edgesToAction := IdentityDictionary new: self expectedSize. " track edges until they are allowed to be consumed "
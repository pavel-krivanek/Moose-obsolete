generated
varArguments: anOrderedCollection
	self setParents: self varArguments to: nil.
	varArguments := anOrderedCollection.
	self setParents: self varArguments to: self
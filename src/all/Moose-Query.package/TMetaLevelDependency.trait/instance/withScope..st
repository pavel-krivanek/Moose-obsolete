scoping
withScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are up or down in the containment tree of the metamodel"

	^ (self withScope: aClassFAMIX in: OrderedCollection new) asSet
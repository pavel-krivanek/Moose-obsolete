scoping
atScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are up in the containment tree of the metamodel"

	self flag: #todo.	"I think we do not need the #asArray cast but it will break tests. I will probably let it now then change the tests later. Step by step."
	^ (self atScope: aClassFAMIX in: OrderedCollection new) asArray
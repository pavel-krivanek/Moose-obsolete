tests
classWithUnknownAttribute
	^ '
(
	(FAMIX.Class (id: 1)
		(name ''AClass'') 
		(unknownMetric 3)
	)
	(FAMIX.Class (id: 2)
		(name ''SuperClass'')
	)
	(FAMIX.Inheritance (id: 3)
		(subclass (ref: 1))
		(superclass (ref: 2))
	)
	(FAMIX.Method
		(name ''aMethod'') 
		(parentType (ref: 1))
	)
)'

	"(FAMIX.UnknownElement (id: 3))"
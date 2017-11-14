data
modelVersion5
	"
	self new simpleModel5
	"

	^
'(
	(FAMIX.Namespace (id: 1) (name ''aNamespace''))

	(FAMIX.Class (id: 2) (name ''ClassA'') (container (ref: 1)) (parentPackage (ref: 201)))
	(FAMIX.Method (name ''methodA1'') (signature ''methodA1()'') (parentType (ref: 2)) (numberOfLinesOfCode 4))
	(FAMIX.Method (name ''methodA2'') (signature ''methodA2()'') (parentType (ref: 2)) (numberOfLinesOfCode 5))
	(FAMIX.Attribute (name ''attributeA1'') (parentType (ref: 2)))

	(FAMIX.Class (id: 3) (name ''ClassB'') (container (ref: 1)) (parentPackage (ref: 201)))
	(FAMIX.Attribute (name ''attributeB1'') (parentType (ref: 3)))

	(FAMIX.Inheritance (subclass (ref: 3)) (superclass (ref: 2)))

	(FAMIX.Class (id: 5) (name ''ClassD'') (container (ref: 1)) (parentPackage (ref: 203)))
	(FAMIX.Method (name ''methodD1'') (signature ''methodD1()'') (parentType (ref: 5)) (numberOfLinesOfCode 15))
	(FAMIX.Method (name ''methodD2'') (signature ''methodD2()'') (parentType (ref: 5)) (numberOfLinesOfCode 7))
	(FAMIX.Method (name ''methodD3'') (signature ''methodC1()'') (parentType (ref: 5)) (numberOfLinesOfCode 4))
	(FAMIX.Attribute (name ''attributeD1'') (parentType (ref: 5)))
	(FAMIX.Attribute (name ''attributeD2'') (parentType (ref: 5)))

	(FAMIX.Inheritance (subclass (ref: 5)) (superclass (ref: 2)))

	(FAMIX.Class (id: 6) (name ''ClassE'') (container (ref: 1)) (parentPackage (ref: 203)))
	(FAMIX.Attribute (name ''attributeE1'') (parentType (ref: 6)))

	(FAMIX.Inheritance (subclass (ref: 6)) (superclass (ref: 3)))

	(FAMIX.Package (id: 201) (name ''aPackage''))
	(FAMIX.Package (id: 203) (name ''yetAnotherPackage'') (parentPackage (ref: 201)))
)'
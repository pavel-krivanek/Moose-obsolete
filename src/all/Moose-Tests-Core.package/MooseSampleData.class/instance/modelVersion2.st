data
modelVersion2
	"
	self new simpleModel2
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

	(FAMIX.Class (id: 4) (name ''ClassC'') (container (ref: 1)) (parentPackage (ref: 202)))
	(FAMIX.Method (name ''methodC1'') (signature ''methodC1()'') (parentType (ref: 4)) (numberOfLinesOfCode 4))

	(FAMIX.Inheritance (subclass (ref: 4)) (superclass (ref: 2)))

	(FAMIX.Package (id: 201) (name ''aPackage''))
	(FAMIX.Package (id: 202) (name ''anotherPackage''))
	(FAMIX.Package (id: 203) (name ''aPackage'') (parentPackage (ref: 201)))


	(FAMIX.Package (id: 201) (name ''aPackage''))
	(FAMIX.Package (id: 202) (name ''aPackage'') (parentPackage (ref: 201)))
)'
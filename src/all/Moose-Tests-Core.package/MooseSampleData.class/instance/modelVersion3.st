data
modelVersion3
	"
	self new simpleModel3
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
	(FAMIX.Method (name ''methodC2'') (signature ''methodC2()'') (parentType (ref: 4)) (numberOfLinesOfCode 10))
	(FAMIX.Method (name ''methodC3'') (signature ''methodC3()'') (parentType (ref: 4)) (numberOfLinesOfCode 7))
	(FAMIX.Attribute (name ''attributeC1'') (parentType (ref: 4)))
	(FAMIX.Attribute (name ''attributeC2'') (parentType (ref: 4)))

	(FAMIX.Inheritance (subclass (ref: 4)) (superclass (ref: 2)))

	(FAMIX.Class (id: 5) (name ''ClassD'') (container (ref: 1)) (parentPackage (ref: 202)))
	(FAMIX.Method (name ''methodD1'') (signature ''methodD1()'') (parentType (ref: 5)) (numberOfLinesOfCode 3))

	(FAMIX.Inheritance (subclass (ref: 5)) (superclass (ref: 4)))

	(FAMIX.Package (id: 201) (name ''aPackage''))
	(FAMIX.Package (id: 202) (name ''anotherPackage'')))'
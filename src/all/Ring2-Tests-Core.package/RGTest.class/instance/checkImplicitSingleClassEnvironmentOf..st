utilities
checkImplicitSingleClassEnvironmentOf: anRGClass
	
	self deny: (anRGClass isRingResolved).

	"we have SomeClass, SomeClass class, SomeClass superclass, SomeClass superclass class"
	self assert: anRGClass environment ask behaviors size equals: 4.

	"we have one package for SomeClass and SomeClass class, other for SomeClass superclass 
	and SomeClass superclass class"	
	self assert: anRGClass environment ask packages size equals: 2.

	self checkHierarchyConsistencyOf: anRGClass.
	
	
	

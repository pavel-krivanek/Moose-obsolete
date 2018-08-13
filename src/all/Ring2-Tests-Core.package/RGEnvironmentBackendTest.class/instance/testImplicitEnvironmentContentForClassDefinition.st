tests
testImplicitEnvironmentContentForClassDefinition
	
	| def def2 env |

	def := RGClass named: #SomeClass.
	env := def environment.

	"we have SomeClass, SomeClass class, SomeClass superclass, SomeClass superclass class"
	self assert: env ask behaviors size equals: 4.

	"we have one package for SomeClass and SomeClass class, other for SomeClass superclass 
	and SomeClass superclass class"	
	self assert: env ask packages size equals: 2.
	self assert: (env ask behaviors select: #isMeta) size equals: 2.

	self checkHierarchyConsistencyOf: def.
	
	self assert: (def isRingResolved).
	self deny: (def superclass isRingResolved).
	self deny: (def metaclass isRingResolved).
	self deny: (def superclass metaclass isRingResolved).
	
	def2 := RGClass named: #SomeOtherClass parent: env.
	self assert: env ask behaviors size equals: 8. 
	self assert: env ask packages size equals: 4.
	
	self checkHierarchyConsistencyOf: def2.

	self assert: (def2 isRingResolved).
	self deny: (def2 superclass isRingResolved).
	self deny: (def2 metaclass isRingResolved).
	self deny: (def2 superclass metaclass isRingResolved).
	

tests
testCleanUnusedUnreferencedBehaviors

	| env class1 class2 | 
	
	env := RGEnvironment new.
	class1 := env ensureClassNamed: 'SomeClass1'.
	class2 := env ensureClassNamed: 'SomeClass2'.
	self assert: env ask behaviors size equals: 8. "only pre-check"
	
	"class1 superclass makeResolved.
	class1 metaclass makeResolved.	
	class1 superclass metaclass makeResolved."
	
	class2 superclass: class1 superclass.
	class2 metaclass superclass: class1 metaclass superclass.
	class2 metaclass metaclass: class1 metaclass metaclass.
	self assert: env ask behaviors size equals: 8. "nothing changed"
	
	env cleanUnusedUnreferencedBehaviors.
	self assert: env ask behaviors size equals: 6. 
	
	
	
	

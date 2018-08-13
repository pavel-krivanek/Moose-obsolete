tests
testUnresolveSuperclass
	| env class1 class2 |
	
	env := RGEnvironment new.
	class1 := env ensureClassNamed: #Superclass.
	class2 := env ensureClassNamed: #Subclass.
	
	self deny: class2 hasResolvedSuperclass. 
	class2 superclass: class1.
	self assert: class2 hasResolvedSuperclass. 
	class2 unresolveSuperclass.
	self deny: class2 hasResolvedSuperclass. 
	
	self assert: class1 subclasses isEmpty.

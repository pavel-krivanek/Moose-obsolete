testing
testDefinedBehaviorsOfUnresolvedPackages

	| env class |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	self assert: class package definedBehaviors size equals: 1.
	self assert: class package definedBehaviors anyOne equals: class.

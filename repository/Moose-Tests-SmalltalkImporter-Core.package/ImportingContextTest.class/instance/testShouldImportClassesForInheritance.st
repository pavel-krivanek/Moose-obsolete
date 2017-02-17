tests
testShouldImportClassesForInheritance
	"when I extract inheritance I should also extract the dependents of inheritance, here class
	please see that this test is generic and that we can change the dependencies between 
	entities without breaking it"
	
	| context |
	context :=MooseImportingContext new.
	context importInheritance.
	(context class entityDependencies at: context class importingInheritance)
		do: [:each | self assert: (context shouldImport: each)]
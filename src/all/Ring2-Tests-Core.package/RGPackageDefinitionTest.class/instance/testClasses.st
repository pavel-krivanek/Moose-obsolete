testing
testClasses
	
	| package env class1 class2 trait1 |

	package := RGPackageDefinition named: 'SomePackage'.
	env := package environment.
	
	self assert: package classes isEmpty.
	self assert: package definedClasses isEmpty.
	self assert: package definedTraits isEmpty.
	self assert: package classNames isEmpty.
	self assert: package extendedBehaviors isEmpty.
	self assert: package extendedClasses isEmpty.
	self assert: package extendedClassesAndTraits isEmpty.
	self assert: package extendedSelectors isEmpty.
	self assert: package extendedTraits isEmpty.
		
	class1 := env ensureClassNamed: #Class1.
	class2 := env ensureClassNamed: #Class2.
	
	class1 package: package.
	class2 package: package.
	
	self assert: package classes size equals: 2.
	self assert: (package classes includes: class1).
	self assert: (package classes includes: class2).
	
	self assert: package definedClasses size equals: 2.
	self assert: (package definedClasses includes: class1).
	self assert: (package definedClasses includes: class2).

	self assert: package classNames asArray sorted equals: #(Class1 Class2).

	trait1 := env ensureTraitNamed: #Trait1.
	trait1 package: package.

	self assert: package definedClasses size equals: 3.
	self assert: (package definedClasses includes: trait1).
	self assert: package definedClassesOnly size equals: 2.
	self assert: (package definedClassesOnly allSatisfy: #isClass).

	self assert: package definedTraits size equals: 1.
	self assert: (package definedClasses includes: trait1).

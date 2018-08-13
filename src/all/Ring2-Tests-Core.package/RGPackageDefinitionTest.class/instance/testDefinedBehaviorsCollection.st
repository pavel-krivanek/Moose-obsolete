testing
testDefinedBehaviorsCollection
	
	| package env behavior1 behavior2 behavior3 |

	package := RGPackageDefinition unnamed.
	env := package environment.

	self assert: package definedBehaviors isEmpty.
	self assert: (package hasUnresolved: #definedBehaviors).
	
	behavior1 := env ensureClassNamed: #Behavior1.
	package addDefinedBehavior: behavior1.
	self assert: package definedBehaviors size equals: 1.

	self assert: (package hasResolved: #definedBehaviors).
	
	behavior2 := env ensureClassNamed: #'Behavior2 class'.
	package addDefinedBehavior: behavior2.
	self assert: package definedBehaviors size equals: 2.
	
	behavior3 := env ensureTraitNamed: #Behavior3.
	package addDefinedBehavior: behavior3.
	self assert: package definedBehaviors size equals: 3.

	package removeDefinedBehavior: behavior3.
	self assert: package definedBehaviors size equals: 2.

	package cleanDefinedBehaviors.
	self assert: package definedBehaviors isEmpty.
	self assert: (package hasResolved: #definedBehaviors).

tests
testDefinition

	| aClass |
	
	aClass := RGClass named: #SomeClass.
	aClass superclass name: #Object.
	
	self assert: (aClass definition beginsWith: 'Object subclass: #SomeClass')	

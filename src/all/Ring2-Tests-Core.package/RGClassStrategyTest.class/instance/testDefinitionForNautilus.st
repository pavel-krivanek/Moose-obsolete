tests
testDefinitionForNautilus

	| aClass |
	
	aClass := RGClass named: #SomeClass.
	aClass superclass name: #Object.
	
	self assert: (aClass definitionForNautilus beginsWith: 'Object subclass: #SomeClass')	

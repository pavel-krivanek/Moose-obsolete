tests
testCategory

	| aClass |
	
	aClass := RGClass named: #SomeClass.
	aClass category: 'SomeCategory'.
	self assert: aClass category = 'SomeCategory'

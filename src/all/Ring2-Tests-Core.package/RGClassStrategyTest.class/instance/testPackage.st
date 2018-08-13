tests
testPackage

	| aClass aPackage |
	
	aClass := RGClass named: #SomeClass.
	aPackage := aClass environment ensurePackageNamed: 'Package'.
	
	aClass package: aPackage.
	self assert: (aClass package == aPackage).
tests
testStoreString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: anRGBehavior storeString equals: '(RGClass named: #unresolved)'.

	anRGBehavior := RGClass named: #SomeClass.
	self assert: anRGBehavior storeString equals: '(RGClass named: #SomeClass)'.	
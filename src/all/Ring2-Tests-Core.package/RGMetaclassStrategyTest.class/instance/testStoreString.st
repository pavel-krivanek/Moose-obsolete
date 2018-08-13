tests
testStoreString

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newMetaclass.
	self assert: anRGBehavior storeString equals: '(RGMetaclass named: #unresolved)'.

	anRGBehavior := RGMetaclass named: #SomeMetaclass.
	self assert: anRGBehavior storeString equals: '(RGMetaclass named: #SomeMetaclass)'.	
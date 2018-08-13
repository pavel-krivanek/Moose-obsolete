tests
testSiblings
	| newBehavior |
	
	newBehavior := RGClass named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior metaclass.
	self assert: newBehavior baseBehavior equals: newBehavior.
	self assert: newBehavior instanceSide equals: newBehavior.
	self assert: newBehavior theNonMetaClass equals: newBehavior.
	
	newBehavior := RGMetaclass named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior baseClass.
	self assert: newBehavior baseBehavior equals: newBehavior baseClass.
	self assert: newBehavior instanceSide equals: newBehavior baseClass.
	self assert: newBehavior theNonMetaClass equals: newBehavior baseClass.

	newBehavior := RGTrait named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior classTrait.
	self assert: newBehavior baseBehavior equals: newBehavior.
	self assert: newBehavior instanceSide equals: newBehavior.
	self assert: newBehavior theNonMetaClass equals: newBehavior.

	newBehavior := RGMetaclassTrait named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior baseTrait.
	self assert: newBehavior baseBehavior equals: newBehavior baseTrait.
	self assert: newBehavior instanceSide equals: newBehavior baseTrait.
	self assert: newBehavior theNonMetaClass equals: newBehavior baseTrait.


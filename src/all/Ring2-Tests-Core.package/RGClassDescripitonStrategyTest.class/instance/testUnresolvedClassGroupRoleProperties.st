tests
testUnresolvedClassGroupRoleProperties

	| anRGBehavior |
	
	anRGBehavior := RGBehavior newClass.
	self assert: (anRGBehavior superclass propertyNamed: #role) equals: #superclass.
	self assert: (anRGBehavior metaclass propertyNamed: #role) equals: #metaclass.
	self assert: (anRGBehavior metaclass superclass propertyNamed: #role) equals: #superclassMetaclass.

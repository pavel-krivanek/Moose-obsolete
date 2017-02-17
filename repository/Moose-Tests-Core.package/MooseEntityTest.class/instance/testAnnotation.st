tests
testAnnotation
	| methodProperty |
	MooseEntity allSubclassesDo: [ :cls |
		self assert: cls annotation == cls.
	].

	self assert: MooseEntity annotation == MooseEntity.
	
	methodProperty := (MooseEntity class >> #annotation) properties.
	self assert:  (methodProperty includesKey: #abstract)
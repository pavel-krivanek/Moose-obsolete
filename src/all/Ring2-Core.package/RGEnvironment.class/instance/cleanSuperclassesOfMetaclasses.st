cleaning
cleanSuperclassesOfMetaclasses

	"fix suprclasses of metaclasses do not pointing to metaclasses of superclasses"
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass and: [ each superclass isRingResolved not ])
			ifTrue: [ each superclass: each baseClass superclass metaclass] ].

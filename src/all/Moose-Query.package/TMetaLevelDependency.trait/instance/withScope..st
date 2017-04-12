scoping
withScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are up or down in the containment tree of the metamodel"

	| entities |
	entities := OrderedCollection new.
	(self allParentTypes includes: aClassFAMIX)
		ifTrue: [ entities addAll: (self atScope: aClassFAMIX) ].
	(self allChildrenTypes includes: aClassFAMIX)
		ifTrue: [ entities addAll: (self toScope: aClassFAMIX) ].
	^ entities
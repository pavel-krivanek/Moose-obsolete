cleaning
cleanWithMetaclassNamed: aProposedName

	self unifyMetaclass: aProposedName.
	self hasTraits ifTrue: [ 
		self unifyTrait.
		self unifyClassTrait. ].
	self cleanSuperclassesOfMetaclasses.
	self cleanUnusedUnreferencedBehaviors.
	self cleanUnusedUnreferencedPackages.
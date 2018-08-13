accessing - backend
addBehavior: anRGBehavior

	self backend forEnvironment
		addBehavior: anRGBehavior
		to: self.
	anRGBehavior isMeta ifFalse: [
		anRGBehavior package
			ifNotNil: [ :package | 
				self backend forEnvironment addPackage: anRGBehavior package	to: self.
				package addDefinedBehavior: anRGBehavior. ].
		"self backend forEnvironment
					addGlobalVariable: (RGGlobalVariable named: anRGBehavior name parent: self)
					to: self" ].

	(anRGBehavior hasResolvedName)
		ifTrue: [ self queryInterface behaviorsDictionary at: anRGBehavior name asSymbol put: anRGBehavior ].
				

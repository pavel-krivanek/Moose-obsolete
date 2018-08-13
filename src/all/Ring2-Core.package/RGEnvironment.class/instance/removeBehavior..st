accessing - backend
removeBehavior: anRGBehavior

	self backend forEnvironment removeBehavior: anRGBehavior from: self.
	
	"remove extensions methods deleted with the behavior from owning packages"
	anRGBehavior extensions do: [ :each |
		each package removeExtensionMethod: each ].
	
	(anRGBehavior package notNil and: [anRGBehavior package  definedBehaviors includes: anRGBehavior]) ifTrue: [ 
	anRGBehavior package removeDefinedBehavior: anRGBehavior.
	].
	
	self announcer behaviorRemoved: anRGBehavior.
	
	(anRGBehavior hasResolvedName) ifTrue: [ 
		self queryInterface behaviorsDictionary removeKey: anRGBehavior name ifAbsent: []].

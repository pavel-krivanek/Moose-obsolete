instance creation
named: aString parent: anRGObject

	^ (RGBehavior named: aString parent: anRGObject  behaviorStrategy: (self newStrategyFor: anRGObject environment))
		yourself
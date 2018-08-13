instance creation
parent: anRGObject

	^ (RGBehavior parent: anRGObject behaviorStrategy: (self newStrategyFor: anRGObject environment))
		yourself